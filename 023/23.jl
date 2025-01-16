using Primes
using Combinatorics

MAX = 28123

function divisorSum(n)
  allfactors = factor(Vector, n)
  powers = powerset(allfactors, 1)
  alldivisors = map(p -> prod(p), powers) |> unique
  without_n = filter(d -> d != n, alldivisors)
  return sum(vcat([1], without_n))
end

function allAbundant()
  return [ i for i in 1:MAX if divisorSum(i) > i ]
end

function solution()
  all = allAbundant()
  pairsums = [ i + j for (i, j) in Iterators.product(all, all) ] |> unique

  cannot = setdiff(Set(1:MAX), pairsums)

  return sum(cannot)
end

@show solution()
