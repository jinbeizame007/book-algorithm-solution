# code 5.4

function chmin(a::T, b::T)::T where T
    if a < b
        return a
    else
        return b
    end
end

function main()
    N = parse(Int64, readline())
    h = [parse(Int64, readline()) for _ in 1:N]

    dp = [typemax(Int64) for _ in 1:N]
    dp[1] = 0

    for i in 1:N
        if i + 1 <= N
            dp[i + 1] = chmin(dp[i + 1], dp[i] + abs(h[i] - h[i + 1]))
        end
        if i + 2 <= N
            dp[i + 2] = chmin(dp[i + 2], dp[i] + abs(h[i] - h[i + 2]))
        end
    end

    println(dp[N])
end

main()
