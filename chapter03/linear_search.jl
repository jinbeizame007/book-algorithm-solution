# code 3.1

function main()
    N = parse(Int64, readline())
    v = parse(Int64, readline())
    a = [parse(Int64, readline()) for _ in 1:N]

    exist = false
    for i in 1:N
        if a[i] == v
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
