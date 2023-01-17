# code 4.1

function func(N::Int64)
    N == 0 && return 0
    return N + func(N - 1)
end

println(func(5))
