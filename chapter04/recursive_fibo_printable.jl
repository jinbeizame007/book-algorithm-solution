# code 4.6

function fibo(N::Int64)
    println("fibo($N)を呼び出しました")

    N == 0 && return 0
    N == 1 && return 1

    result = fibo(N - 1) + fibo(N - 2)
    println("$N 項目 = $result")

    return result
end

fibo(6)
