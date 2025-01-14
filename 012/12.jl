using Primes
using Combinatorics

function countFactors(n)
  allfactors = factor(Vector, n)
  powers = powerset(allfactors, 1)
  alldivisors = map(p -> prod(p), powers) |> unique |> length
  
  return alldivisors + 1
end

function solution(n)
  triangle = 1
  factors = 1
  i = 1
  while factors <= n
    i += 1
    triangle += i
    factors = countFactors(triangle)
    @show i, triangle, factors
  end
  return triangle
end

@assert solution(5) == 28

@show solution(500)
