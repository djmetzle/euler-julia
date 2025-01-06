using Primes

function solution(p)
  return factor(Set, p) |> maximum
end

@assert solution(13195) == 29

@show solution(600851475143)
