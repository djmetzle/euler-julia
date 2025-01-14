function solution(n)
  power = BigInt(2)^n
  str = string(power)
  digits = map(d -> parse(Int, d), split(str, ""))
  return sum(digits)
end

@assert solution(15) == 26

@show solution(1000)
