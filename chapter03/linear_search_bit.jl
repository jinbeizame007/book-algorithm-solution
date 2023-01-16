# code 3.6

function main()
    N = parse(Int64, readline())
    W = parse(Int64, readline())
    a = [parse(Int64, readline()) for _ in 1:N]

    exist = false
    for bit in 1:(1 << N)
        sum = 0
        for i in 1:N
            if 0 < bit & (1 << i)
                sum += a[i]
            end
        end

        if sum == W
            exist = true
        end
    end

    if exist
        println("Yes")
    else
        println("No")
    end
end

main()
