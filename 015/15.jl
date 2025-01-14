function solution(n)
  return binomial(2*n, n)
end

@assert solution(2) == 6

@show solution(20)
