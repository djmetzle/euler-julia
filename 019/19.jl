using Dates

function solution()
  startdate = Date(1901,1,1)
  enddate = Date(2000,12,31)

  firstsundays = 0
  for d in startdate:Dates.Day(1):enddate
    if Dates.day(d) == 1 && Dates.dayofweek(d) == 7
      firstsundays += 1
    end
  end
  return firstsundays
end

@show solution()
