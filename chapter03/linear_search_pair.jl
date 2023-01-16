# code 3.4

function main()
    N = parse(Int64, readline())
    K = parse(Int64, readline())
    a = [parse(Int64, readline()) for _ in 1:N]
    b = [parse(Int64, readline()) for _ in 1:N]

    min_value = typemax(Int64)
    for i in 1:N
        for j in 1:N
            if a[i] + b[j] < K
                continue
            end

            if a[i] + b[j] < min_value
                min_value = a[i] + b[j]
            end
        end
    end

    println(min_value)
end

main()
