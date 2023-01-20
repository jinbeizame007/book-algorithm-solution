# code 5.6

function chmin(a::T, b::T)::T where T
    if a < b
        return a
    else
        return b
    end
end

N = parse(Int64, readline())
h = [parse(Int64, readline()) for _ in 1:N]
dp = [typemax(Int64) for _ in 1:N]

function rec(i::Int64)::Int64
    dp[i] < typemax(Int64) && return dp[i]

    i == 1 && return 0

    res = typemax(Int64)

    res = chmin(res, rec(i - 1) + abs(h[i] - h[i - 1]))
    if i > 2
        res = chmin(res, rec(i - 2) + abs(h[i] - h[i - 2]))
    end

    return dp[i] = res
end

function main()
    println(rec(N))
end

main()
