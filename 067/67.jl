TEST_TRIANGLE = "
3
7 4
2 4 6
8 5 9 3
"

TRIANGLE = read("./triangle.txt", String)

function parseTriangle(triangle)
  lines = split(triangle, "\n") |> filter(l -> l != "")
  split_lines = map(l -> split(l, " "), lines)
  digits = map(layer -> map(d -> parse(Int, d), layer), split_lines)
  return digits
end

function solution(triangle)
  layers = parseTriangle(triangle)
  layersum = [0]
  for layer in layers
    width = length(layer)
    thislayer = zeros(Int, width)
    for i in 1:width
      l = layer[i]
      prevl = i > 1 ? layersum[i-1] : 0
      prevr = i < width ? layersum[i] : 0
      thislayer[i] = max(prevl + l, prevr +l)
    end
    layersum = thislayer
  end
  return maximum(layersum)
end

@assert solution(TEST_TRIANGLE) == 23

@show solution(TRIANGLE)
