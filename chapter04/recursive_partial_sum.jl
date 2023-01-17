# code 4.9

function func(i::Int64, w::Int64, a::Vector{Int64})::Bool
    if i == 0
        return w == 0
    end

    # a[i] を選ばない場合
    # 残りの整数を用いて w を作れるかどうか
    func(i - 1, w, a) && return true

    # a[i] を選ぶ場合
    # 残りの整数を用いて、　w　 - a[i] を作れるかどうか
    func(i - 1, w - a[i], a) && return true

    # どちらも false の場合は false
    return false
end

function main()
    N = parse(Int64, readline())
    W = parse(Int64, readline())
    a = [parse(Int64, readline()) for _ in 1:N]

    if func(N, W, a)
        println("Yes")
    else
        println("No")
    end
end

main()
