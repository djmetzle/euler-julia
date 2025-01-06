function ispalindrome(n)
  str = string(n)
  return str == reverse(str)
end

function solution(n)
  low = 10^(n-1)
  high = 10^n - 1
  return [ i*j for (i,j) in Iterators.product(low:high, low:high) if ispalindrome(i*j) ] |> maximum
end

@assert solution(2) == 9009

@show solution(3) 
