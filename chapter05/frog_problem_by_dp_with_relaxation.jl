# code 5.3

function chmin(a::T, b::T)::T where T
    if a > b
        return b
    else
        return a
    end
end

function main()
    N = parse(Int64, readline())
    h = [parse(Int64, readline()) for _ in 1:N]

    dp = [typemax(Int64) for _ in 1:N]
    dp[1] = 0

    for i in 2:N
        dp[i] = chmin(dp[i], dp[i - 1] + abs(h[i] - h[i - 1]))
        if 2 < i
            dp[i] = chmin(dp[i], dp[i - 2] + abs(h[i] - h[i - 2]))
        end
    end

    println(dp[N])
end

main()
