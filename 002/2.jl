MEMO = Dict()

function fib(n)
  @show n
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
  fibs = []
  i = 1
  last = 1
  while last <= n
    push!(fibs, last)
    last = fib(i)
    i += 1
  end
  even = filter(iseven, fibs)
  return sum(even)
end

@assert solution(100) == 44

@show solution(Int(4e6))
