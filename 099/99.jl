PAIRS = readlines("./base_exp.txt")

function parseInput()
  return map(l -> parse.(BigInt, split(l, ",")), PAIRS)
end

function solution()
  inputpairs = parseInput()

  max = BigInt(0)
  maxi = 0
  for i in eachindex(inputpairs)
    (b, e) = inputpairs[i]
    val = b^e
    if val > max
      max = val
      maxi = i
    end
  end
  return maxi
end

@show solution()
