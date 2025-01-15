function solution(n)
  str = string(factorial(n))
  digits = map(d -> parse(Int, d), split(str, ""))
  return sum(digits)
end

@assert solution(10) == 27

@show solution(BigInt(100))
