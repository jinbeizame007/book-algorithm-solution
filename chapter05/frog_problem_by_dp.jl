# code 5.1

function main()
    N = parse(Int64, readline())
    h = [parse(Int64, readline()) for _ in 1:N]

    dp = [typemax(Int64) for _ in 1:N]

    dp[1] = 0

    for i in 2:N
        if i == 2
            dp[i] = abs(h[i] - h[i - 1])
        else
            dp[i] = min(
                dp[i - 1] + abs(h[i] - h[i - 1]),
                dp[i - 2] + abs(h[i] - h[i - 2])
            )
        end
    end

    println(dp[N])
end

main()
