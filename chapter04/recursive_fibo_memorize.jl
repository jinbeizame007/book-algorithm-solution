# code 4.8

memo = Vector{Int64}()

function fibo(N::Int64)::Int64
    N == 0 && return 0
    N == 1 && return 1

    memo[N] != -1 && return memo[N]

    return memo[N] = fibo(N - 1) + fibo(N - 2)
end

function main()
    append!(memo, [-1 for _ in 1:50])

    fibo(49)

    for N in 1:49
        println("$N 項目: $(memo[N])")
    end
end

main()
