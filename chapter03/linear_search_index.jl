# code 3.2

function main()
    N = parse(Int64, readline())
    v = parse(Int64, readline())
    a = [parse(Int64, readline()) for _ in 1:N]

    found_id = -1
    for i in 1:N
        if a[i] == v
            found_id = i
            break
        end
    end

    println(found_id)
end

main()
