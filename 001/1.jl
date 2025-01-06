function solution(n)
  return [ i for i in 1:(n-1) if i % 3 == 0 || i % 5 == 0 ] |> sum
end

@assert solution(10) == 23

@show solution(1000)
