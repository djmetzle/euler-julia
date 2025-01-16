using Combinatorics

function solution()
  digits = collect(0:9)
  all_permutations = permutations(digits,length(digits))
  millionth = Iterators.take(all_permutations, 1_000_000) |> collect |> last
  return join(millionth)
end

@show solution()
