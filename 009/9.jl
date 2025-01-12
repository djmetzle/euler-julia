function solution(n)
  for a in 1:n, b in 1:(n-a)
    c = n - (a+b)
    if a + b + c == n && a^2 + b^2 == c^2
      @show a, b, c
      return a * b * c
    end
  end
  return 0
end

@assert solution(12) == 60

@show solution(1000)
