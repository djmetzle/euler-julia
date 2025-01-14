NUMERALS = Dict(
  0 => "",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
)

TENS = Dict(
  0 => "",
  1 => "TEENS",
  2 => "twenty",
  3 => "thirty",
  4 => "forty",
  5 => "fifty",
  6 => "sixty",
  7 => "seventy",
  8 => "eighty",
  9 => "ninety",
)

TEENS = Dict(
  0 => "ten",
  1 => "eleven",
  2 => "twelve",
  3 => "thirteen",
  4 => "fourteen",
  5 => "fifteen",
  6 => "sixteen",
  7 => "seventeen",
  8 => "eighteen",
  9 => "nineteen",
)

AND = "and"
HUNDRED = "hundred"
THOUSAND = "thousand"

function words(n)
  if n == 1000
    return "one" * THOUSAND
  end

  str = ""
  hundreds_place = n ÷ 100
  tens_place = n ÷ 10
  ones_place = n % 10

  if n >= 100
    hundreds_remainder = n % (hundreds_place * 100)
    tens_place = hundreds_remainder ÷ 10
    str *= NUMERALS[hundreds_place] * HUNDRED
    if hundreds_remainder > 0
      str *= AND
    end
  end

  if tens_place == 0
    if ones_place > 0
      str *= NUMERALS[ones_place]
    end
  end

  if tens_place == 1
    str *= TEENS[ones_place]
  end

  if tens_place > 1
    str *= TENS[tens_place]
    if ones_place > 0
      str *= NUMERALS[ones_place]
    end
  end

  @show n,str, length(str)
  return str
end

function solution(n)
  count = 0
  for i in 1:n
    count += length(words(i))
  end
  return count
end

@assert solution(5) == 19

@show solution(1000)
