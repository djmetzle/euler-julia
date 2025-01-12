using Primes

function solution(n)
  return nextprime(1, n)
end

@assert solution(6) == 13

@show solution(10001)
