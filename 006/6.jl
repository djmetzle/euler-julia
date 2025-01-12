function solution(n)
  sum_of_squares = [ i^2 for i in 1:n ] |> sum
  square_of_sum = sum(1:n)^2
  return square_of_sum - sum_of_squares
end

@assert solution(10) == 2640

@show solution(100)
