using GLMakie
using AbstractPlotting
AbstractPlotting.inline!(true)


struct zoni
   c::Vector{Float64}
   b::Array{Float64, 2}
end

function plot_center(act_zono::zoni)
    center_point=(act_zono.c[1], act_zono.c[2])
    @info (center_point)
    figure, axis, scatterobject = GLMakie.scatter(center_point, color = "green", markersize = 15)
end

function plot_area(act_zono::zoni)
    faces = [
    1 2 3;
    3 4 1;
    ]
    GLMakie.mesh(
    [(0.0, 0.5), (2, 1.0), (3.0, 4.0), (0, 5)], faces, color = [:red, :green, :blue, :orange],
    shading = true
)
end


cen = [1.0; 4.0; 7.0; 0.0]
gen = [2.0 3.0; 1.0 2.0; 3.0 4.0; 0.0 5.0]

zon=zoni(cen, gen)
plot_area(zon)
# plot_center(zon)
