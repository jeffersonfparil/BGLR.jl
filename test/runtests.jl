using BGLR
using Test
using Documenter

Documenter.doctest(BGLR)

@testset "BGLR.jl" begin
    n = 100
    p = 10_000
    X = rand(n, p)
    y = rand(n)

    ETA = Dict("mrk" => BayesA(X))
    fm = bglr(y = y, ETA = ETA)
    fm.varE # posterior mean of error variance
    fm.yHat # predictions
    fm.ETA["mrk"].var # variance of the random effect
    fm.ETA["mrk"].effects # random effects
    @test length(fm.ETA["mrk"].effects) == p
end
