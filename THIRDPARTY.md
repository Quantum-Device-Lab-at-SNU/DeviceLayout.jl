Derived from Devices.jl (version 0.5.0), an MIT-licensed package at
https://github.com/PainterQubits/Devices.jl. Original license follows:

=====

Copyright © 2019, California Institute of Technology. All rights reserved. Neither the name of the California Institute of Technology (“Caltech”) nor the names of its contributors (and/or sponsors) may be used to endorse or promote products derived from this software without specific prior written permission.

The Devices.jl package is licensed under the MIT "Expat" License:

> Permission is hereby granted, free of charge, to any person obtaining
> a copy of this software and associated documentation files (the
> "Software"), to deal in the Software without restriction, including
> without limitation the rights to use, copy, modify, merge, publish,
> distribute, sublicense, and/or sell copies of the Software, and to
> permit persons to whom the Software is furnished to do so, subject to
> the following conditions:
> 
> The above copyright notice and this permission notice shall be
> included in all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
> IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
> CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
> TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
> SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

A modified version of `adaptive_grid` was originally from PlotUtils.jl, an MIT "Expat"
licensed Julia package by Tom Breloff and contributors (notably Kristoffer Carlsson).

Cadence Design Systems, Inc. holds the rights to the GDS-II format. The specification has
been described with permission in the SPIE Handbook of Microlithography, Micromachining and
Microfabrication, vol. 1 (accessible [here](http://www.cnf.cornell.edu/cnf_spie9.html) as of
April 17, 2017).

The file `src/predicates.jl` contains a Julia adaptation of public domain C code written by
Jonathan Richard Shewchuk. Available at http://www.cs.cmu.edu/~quake/robust.html.

=====

In addition to code derived from Devices.jl based on the above third-party sources, this software defines a macro `@compdef` based on `Base.@kwdef` from Julia, an MIT licensed project by Jeff Bezanson, Stefan Karpinski, Viral B. Shah, and other contributors.

This software includes modified versions of the Noto Sans Mono and Comic Neue fonts, internally named "PolyText Sans Mono" (`PolyTextSansMono`) and "PolyText Comic" (`PolyTextComic`). For more details, see `OFL.txt`, `OFL-FAQ.txt`, and `FONTLOG.txt` files in `deps/PolyTextSansMono` and `deps/PolyTextComic`. The original licenses are reproduced below.

Here is the Noto Sans Mono license:

> Copyright 2012 Google Inc. All Rights Reserved.
> 
> This Font Software is licensed under the SIL Open Font License, Version 1.1.
> This license is copied below, and is also available with a FAQ at:
> http://scripts.sil.org/OFL
> 
> * * *
> 
> ## SIL OPEN FONT LICENSE Version 1.1 - 26 February 2007
> 
> PREAMBLE
> The goals of the Open Font License (OFL) are to stimulate worldwide
> development of collaborative font projects, to support the font creation
> efforts of academic and linguistic communities, and to provide a free and
> open framework in which fonts may be shared and improved in partnership
> with others.
> 
> The OFL allows the licensed fonts to be used, studied, modified and
> redistributed freely as long as they are not sold by themselves. The
> fonts, including any derivative works, can be bundled, embedded,
> redistributed and/or sold with any software provided that any reserved
> names are not used by derivative works. The fonts and derivatives,
> however, cannot be released under any other type of license. The
> requirement for fonts to remain under this license does not apply
> to any document created using the fonts or their derivatives.
> 
> DEFINITIONS
> "Font Software" refers to the set of files released by the Copyright
> Holder(s) under this license and clearly marked as such. This may
> include source files, build scripts and documentation.
> 
> "Reserved Font Name" refers to any names specified as such after the
> copyright statement(s).
> 
> "Original Version" refers to the collection of Font Software components as
> distributed by the Copyright Holder(s).
> 
> "Modified Version" refers to any derivative made by adding to, deleting,
> or substituting -- in part or in whole -- any of the components of the
> Original Version, by changing formats or by porting the Font Software to a
> new environment.
> 
> "Author" refers to any designer, engineer, programmer, technical
> writer or other person who contributed to the Font Software.
> 
> PERMISSION & CONDITIONS
> Permission is hereby granted, free of charge, to any person obtaining
> a copy of the Font Software, to use, study, copy, merge, embed, modify,
> redistribute, and sell modified and unmodified copies of the Font
> Software, subject to the following conditions:
> 
>  1. Neither the Font Software nor any of its individual components,
>     in Original or Modified Versions, may be sold by itself.
> 
>  2. Original or Modified Versions of the Font Software may be bundled,
>     redistributed and/or sold with any software, provided that each copy
>     contains the above copyright notice and this license. These can be
>     included either as stand-alone text files, human-readable headers or
>     in the appropriate machine-readable metadata fields within text or
>     binary files as long as those fields can be easily viewed by the user.
>  3. No Modified Version of the Font Software may use the Reserved Font
>     Name(s) unless explicit written permission is granted by the corresponding
>     Copyright Holder. This restriction only applies to the primary font name as
>     presented to the users.
>  4. The name(s) of the Copyright Holder(s) or the Author(s) of the Font
>     Software shall not be used to promote, endorse or advertise any
>     Modified Version, except to acknowledge the contribution(s) of the
>     Copyright Holder(s) and the Author(s) or with their explicit written
>     permission.
>  5. The Font Software, modified or unmodified, in part or in whole,
>     must be distributed entirely under this license, and must not be
>     distributed under any other license. The requirement for fonts to
>     remain under this license does not apply to any document created
>     using the Font Software.
> 
> TERMINATION
> This license becomes null and void if any of the above conditions are
> not met.
> 
> DISCLAIMER
> THE FONT SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF
> MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT
> OF COPYRIGHT, PATENT, TRADEMARK, OR OTHER RIGHT. IN NO EVENT SHALL THE
> COPYRIGHT HOLDER BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> INCLUDING ANY GENERAL, SPECIAL, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL
> DAMAGES, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> FROM, OUT OF THE USE OR INABILITY TO USE THE FONT SOFTWARE OR FROM
> OTHER DEALINGS IN THE FONT SOFTWARE.

Here is the Comic Neue license:

> Copyright 2014 The Comic Neue Project Authors (https://github.com/crozynski/comicneue)
> 
> This Font Software is licensed under the SIL Open Font License, Version 1.1.
> This license is copied below, and is also available with a FAQ at:
> http://scripts.sil.org/OFL
> 
> * * *
> 
> ## SIL OPEN FONT LICENSE Version 1.1 - 26 February 2007
> 
> PREAMBLE
> The goals of the Open Font License (OFL) are to stimulate worldwide
> development of collaborative font projects, to support the font creation
> efforts of academic and linguistic communities, and to provide a free and
> open framework in which fonts may be shared and improved in partnership
> with others.
> 
> The OFL allows the licensed fonts to be used, studied, modified and
> redistributed freely as long as they are not sold by themselves. The
> fonts, including any derivative works, can be bundled, embedded,
> redistributed and/or sold with any software provided that any reserved
> names are not used by derivative works. The fonts and derivatives,
> however, cannot be released under any other type of license. The
> requirement for fonts to remain under this license does not apply
> to any document created using the fonts or their derivatives.
> 
> DEFINITIONS
> "Font Software" refers to the set of files released by the Copyright
> Holder(s) under this license and clearly marked as such. This may
> include source files, build scripts and documentation.
> 
> "Reserved Font Name" refers to any names specified as such after the
> copyright statement(s).
> 
> "Original Version" refers to the collection of Font Software components as
> distributed by the Copyright Holder(s).
> 
> "Modified Version" refers to any derivative made by adding to, deleting,
> or substituting -- in part or in whole -- any of the components of the
> Original Version, by changing formats or by porting the Font Software to a
> new environment.
> 
> "Author" refers to any designer, engineer, programmer, technical
> writer or other person who contributed to the Font Software.
> 
> PERMISSION & CONDITIONS
> Permission is hereby granted, free of charge, to any person obtaining
> a copy of the Font Software, to use, study, copy, merge, embed, modify,
> redistribute, and sell modified and unmodified copies of the Font
> Software, subject to the following conditions:
> 
>  1. Neither the Font Software nor any of its individual components,
>     in Original or Modified Versions, may be sold by itself.
> 
>  2. Original or Modified Versions of the Font Software may be bundled,
>     redistributed and/or sold with any software, provided that each copy
>     contains the above copyright notice and this license. These can be
>     included either as stand-alone text files, human-readable headers or
>     in the appropriate machine-readable metadata fields within text or
>     binary files as long as those fields can be easily viewed by the user.
>  3. No Modified Version of the Font Software may use the Reserved Font
>     Name(s) unless explicit written permission is granted by the corresponding
>     Copyright Holder. This restriction only applies to the primary font name as
>     presented to the users.
>  4. The name(s) of the Copyright Holder(s) or the Author(s) of the Font
>     Software shall not be used to promote, endorse or advertise any
>     Modified Version, except to acknowledge the contribution(s) of the
>     Copyright Holder(s) and the Author(s) or with their explicit written
>     permission.
>  5. The Font Software, modified or unmodified, in part or in whole,
>     must be distributed entirely under this license, and must not be
>     distributed under any other license. The requirement for fonts to
>     remain under this license does not apply to any document created
>     using the Font Software.
> 
> TERMINATION
> This license becomes null and void if any of the above conditions are
> not met.
> 
> DISCLAIMER
> THE FONT SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF
> MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT
> OF COPYRIGHT, PATENT, TRADEMARK, OR OTHER RIGHT. IN NO EVENT SHALL THE
> COPYRIGHT HOLDER BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> INCLUDING ANY GENERAL, SPECIAL, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL
> DAMAGES, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> FROM, OUT OF THE USE OR INABILITY TO USE THE FONT SOFTWARE OR FROM
> OTHER DEALINGS IN THE FONT SOFTWARE.
