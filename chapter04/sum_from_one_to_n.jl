# code 4.2

function func(N::Int64)::Int64
    println("func($N)を呼び出しました")

    N == 0 && return 0

    result = N + func(N - 1)
    println("$(N)までの和=$result")
    
    return result
end

println(func(5))
