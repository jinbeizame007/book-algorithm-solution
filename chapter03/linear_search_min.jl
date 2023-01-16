# code 3.3

function main()
    N = parse(Int64, readline())
    a = [parse(Int64, readline()) for _ in 1:N]

    min_value = typemax(Int64)
    for i in 1:N
        if a[i] < min_value
            min_value = a[i]
        end
    end

    println(min_value)
end

main()
