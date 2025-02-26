# DeviceLayout.jl

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://aws-cqc.github.io/DeviceLayout.jl/stable)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://aws-cqc.github.io/DeviceLayout.jl/dev)
[![CI](https://github.com/aws-cqc/DeviceLayout.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/aws-cqc/DeviceLayout.jl/actions/workflows/CI.yml)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

DeviceLayout.jl is a [Julia](http://julialang.org) package for computer-aided design (CAD) of quantum integrated circuits, developed at the AWS Center for Quantum Computing. The package supports the generation of 2D layouts and 3D models of complex devices using a low-level geometry interface together with a high-level schematic-driven workflow.

## Key features

  - Geometry-level layout with rich geometry types like polygons, ellipses, and paths
  - Schematic-driven layout, allowing users to manage complexity by maintaining separate levels of abstraction for component geometry and device connectivity
  - 3D modeling and meshing (via [Open CASCADE Technology](https://dev.opencascade.org/) and [Gmsh](https://gmsh.info/)), which takes advantage of rich geometry and schematic information to improve meshing and allow programmatic generation of configurations for simulation software (like [*Palace*](https://awslabs.github.io/palace/stable/), an open-source tool for electromagnetic finite-element analysis also developed at the AWS CQC)
  - Built-in support for common elements of superconducting quantum processors like coplanar waveguides, air bridges, and flip-chip assemblies
  - GDSII and graphics format export for 2D layouts, as well as various standard formats for 3D models and meshes
  - Explicit unit support without sacrificing performance
  - Users write code in Julia, a scientific programming language that combines high performance and ease of use
  - The [Julia package manager](https://pkgdocs.julialang.org/v1/) offers portability and reproducibility for design projects in collaborations of any size
  - Teams can manage their own process design kit as a set of Julia packages in a private registry, leveraging the package manager for versioning process technologies and components

## Installation

Julia can be downloaded [here](https://julialang.org/downloads/). We support Julia v1.10 or later.

From Julia, install DeviceLayout.jl using the built-in package manager:

```julia
import Pkg
Pkg.activate(".") # Activates an environment in the current directory
Pkg.add("DeviceLayout")
```

We recommend [using an environment for each project](https://julialang.github.io/Pkg.jl/v1/environments/) rather than installing packages in the default environment.

The [DeviceLayout.jl documentation](https://aws-cqc.github.io/DeviceLayout.jl/) will help you get started. Examples can be found in the `examples` directory, with full walkthroughs in the docs, including a [17-qubit quantum processor](https://aws-cqc.github.io/DeviceLayout.jl/dev/examples/qpu17/) and [simulation of a transmon and resonator with Palace](https://aws-cqc.github.io/DeviceLayout.jl/dev/examples/singletransmon/).

## Performance and workflow tips

[KLayout](https://www.klayout.de/) is a free (GPL v2+) GDS viewer/editor. It watches
its open files for changes, making it easy to use as a fast previewer alongside DeviceLayout.jl.

The recommended IDE for Julia is [Visual Studio Code](https://code.visualstudio.com/)
with the [Julia for Visual Studio Code extension](https://www.julia-vscode.org/).

Since Julia has a just-in-time compiler, the first time code is executed may take much
longer than any other times. This means that a lot of time will be wasted repeating
compilations if you run DeviceLayout.jl in a script like you would in other languages. For
readability, it is best to split up your CAD code into functions that have clearly named
inputs and perform a well-defined task.

It is also best to avoid writing statements in global scope. In other words, put most of
your code in a function. Your CAD script should ideally look like the following:

```julia
using DeviceLayout, DeviceLayout.PreferredUnits, FileIO

function subroutine1()
    # render some thing
end

function subroutine2()
    # render some other thing
end

function main()
    # my cad code goes here: do all of the things
    subroutine1()
    subroutine2()
    return save("/path/to/out.gds", ...)
end

main() # execute main() at end of script.
```

In a typical workflow, you'll have a text editor open alongside a Julia REPL. You'll save the above code in a file (e.g., `mycad.jl`) and then run `include("mycad.jl")` from the Julia REPL to generate your pattern.
You'll iteratively revise `mycad.jl` and save your changes.
Subsequent runs should be several times faster than the first, if you `include` the file again from the same Julia session.
