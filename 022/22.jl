NAMES = read("./names.txt", String)

function parseNames()
  quoted = split(NAMES, ",")
  all_names = map(n -> replace(n, "\"" => ""), quoted)
  return all_names
end

function nameValue(str)
  charvals = [ Int(c) - 64 for c in str ]
  return sum(charvals)
end

function solution()
  names = parseNames() |> sort
  sum = 0
  for i in eachindex(names)
    name = names[i]
    value = nameValue(name)
    sum += i * value
  end
  return sum
end

@assert nameValue("COLIN") == 53

@show solution()
