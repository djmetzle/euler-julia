using Primes

function solution(n)
  factors = Dict()

  for i in 1:n
    factorization = factor(Dict, i)
    for (f, c) in factorization
      factors[f] = max(get(factors, f, 0), c)
    end
  end

  return [ f^c for (f,c) in factors ] |> prod
end

@assert solution(10) == 2520

@show solution(20)
