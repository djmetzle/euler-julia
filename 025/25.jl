MEMO = Dict()

function fib(n)
  if haskey(MEMO, n)
    return MEMO[n]
  end
  if n in [1,2]
    return n
  end
  val = fib(n-1) + fib(n-2)
  MEMO[n] = val
  return val
end

function solution(n)
  i = BigInt(1)
  while true
    fibi = fib(i)
    @show i, fibi
    if string(fibi) |> length >= n
      return i + 1
    end
    i += 1
  end
end

@assert solution(3) == 12

@show solution(1000)
