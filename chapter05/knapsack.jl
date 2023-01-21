# code 5.7

function chmax(a::T, b::T)::T where T
    if a < b
        return b
    else
        return a
    end
end

# Julia ではインデックスが1から始まるため、書籍内のコードを直接適用することはできない。
# そのため、i または w - weight[i]　が 0 の場合は、価値に 0 を代入するように明示的に指定している。
function main()
    N = parse(Int64, readline())
    W = parse(Int64, readline())
    weight = [parse(Int64, readline()) for _ in 1:N]
    value = [parse(Int64, readline()) for _ in 1:N]

    # 最初の i 個の品物までの中から重さが　w を超えないように選んだときの、価値の総和の最大値
    dp = zeros(Int64, N, W)

    for i in 1:N
        for w in 1:W
            # 各ループでは、dpの各マスを、pull-based　で埋めていく

            # i番目の品物を選ぶ場合
            # 選んだ後に、重さの総和が w を超えない場合のみ選ぶ
            if i != 1 && w - weight[i] >= 0
                if w - weight[i] == 0
                    v = 0
                else
                    v = dp[i, w - weight[i]] + value[i]
                end
                dp[i, w] = chmax(dp[i, w], v)
            end

            # i番目の品物を選ばない場合
            v = i == 1 ? 0 : dp[i - 1, w]
            dp[i, w] = chmax(dp[i, w], v)
        end
    end

    println(dp[N,W])
end

main()
