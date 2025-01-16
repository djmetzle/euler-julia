using Primes
using Combinatorics

function factorSum(n)
  allfactors = factor(Vector, n)
  powers = powerset(allfactors, 1)
  alldivisors = map(p -> prod(p), powers) |> unique
  without_n = filter(d -> d != n, alldivisors)
  return 1 + sum(without_n)
end

function isAmicable(n)
  other = factorSum(n)
  othersum = factorSum(other)
  return n != other && n == othersum
end

function solution(n)
  total = 0
  for i in 1:n
    if isAmicable(i)
      total += i
    end
  end
  return total
end

@assert factorSum(220) == 284
@assert factorSum(284) == 220

@show solution(10_000)
