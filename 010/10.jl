using Primes

function solution(n)
  return primes(n) |> sum
end

@assert solution(10) == 17

@show solution(2_000_000)
