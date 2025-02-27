"""
    mutable struct Corner{T} <: DiscreteSegment{T}

A corner, or sudden kink in a path. The only parameter is the angle `α` of the corner. The
corner begins at a point `p0` with initial angle `α0`. It will also end at `p0`, since the
corner has zero path length. However, during rendering, neighboring segments will be tweaked
slightly so that the rendered path is properly centered about the path function (the
rendered corner has a finite width).
"""
mutable struct Corner{T} <: DiscreteSegment{T}
    α::typeof(1.0°)
    p0::Point{T}
    α0::typeof(1.0°)
    extent::T
    Corner{T}(a) where {T} = new{T}(a, Point(zero(T), zero(T)), 0.0°, zero(T))
    Corner{T}(a, b, c, d) where {T} = new{T}(a, b, c, d)
end
convert(::Type{Corner{T}}, x::Corner) where {T} =
    Corner{T}(x.α, convert(Point{T}, x.p0), x.α0, convert(T, x.extent))
convert(::Type{Segment{T}}, x::Corner) where {T} = convert(Corner{T}, x)

"""
    Corner(α)

Outer constructor for `Corner{Float64}` segments. If you are using units, then you need to
specify an appropriate type: `Corner{typeof(1.0nm)}(α)`, for example. More likely, you will
just use [`corner!`](@ref) rather than directly creating a `Corner` object.
"""
Corner(α) = Corner{Float64}(α, Point(0.0, 0.0), 0.0, 0.0)
copy(x::Corner{T}) where {T} = Corner{T}(x.α, x.p0, x.α0, x.extent)

pathlength(::Corner{T}) where {T} = zero(T)
p0(s::Corner) = s.p0
p1(s::Corner) = s.p0
# function p1(s::Corner)
#     sgn = ifelse(s.α >= 0.0, 1, -1)
#     ∠A = s.α0+sgn*π/2
#     v = s.extent*Point(cos(∠A),sin(∠A))
#     ∠B = ∠A + π + s.α
#     s.p0+v+s.extent*Point(cos(∠B),sin(∠B))
# end
α0(s::Corner) = s.α0
α1(s::Corner) = s.α0 + s.α
setp0!(s::Corner, p::Point) = s.p0 = p
setα0!(s::Corner, α0′) = s.α0 = α0′
summary(s::Corner) = "Corner by $(s.α)"

function line_segments(::Paths.Corner{T}) where {T}
    return Polygons.LineSegment{T}[]
end

"""
    corner!(p::Path, α, sty::Style=discretestyle1(p))

Append a sharp turn or "corner" to path `p` with angle `α`.

The style chosen for this corner, if not specified, is the last `DiscreteStyle` used in the
path.
"""
function corner!(p::Path, α, sty::Style=discretestyle1(p))
    segment(last(p)) isa Paths.Straight ||
        error("corners must follow `Paths.Straight` segments.")
    T = coordinatetype(p)
    seg = Corner{T}(α)

    ext = extent(style(p[end]), pathlength(p[end]))
    w = ext * tan(abs(0.5 * seg.α))
    pa = split(p[end], pathlength(p[end]) - w)
    setstyle!(pa[end], SimpleNoRender(2 * ext, virtual=true))
    splice!(p, length(p), pa)

    # convert takes NoRender() → NoRenderDiscrete()
    push!(p, Node(seg, convert(DiscreteStyle, sty)))
    return nothing
end
