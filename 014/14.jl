function collatz(start)
  n = start
  count = 0
  while n != 1
    n = (n % 2 == 0) ? (n ÷ 2) : (3*n + 1)
    count += 1
  end
  return count
end

function solution()
  maxc = 0
  maxi = 0
  for i in 1:1_000_000
    collatz_count = collatz(i)
    if collatz_count > maxc
      maxc = collatz_count
      maxi = i
    end
  end
  return maxi
end

@show solution()
