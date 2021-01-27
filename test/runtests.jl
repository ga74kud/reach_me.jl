#pkg> activate .
using reach_me
using Test

reach_me.my_f(3,4)
@testset "reach_me.jl" begin
        my_f(3,4)# Write your tests here.
end
