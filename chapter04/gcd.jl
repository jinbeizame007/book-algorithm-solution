# code 4.4

function GCD(m::Int64, n::Int64)
    n == 0 && return m

    return GCD(n, m % n)
end

println(GCD(51, 15))
println(GCD(15, 51))
