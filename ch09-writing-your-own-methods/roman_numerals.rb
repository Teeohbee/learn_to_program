def roman_numeral num

  thousands = (num / 1000)      # Counts number of thousands in the num var
  hundreds = (num % 1000 / 100) # Counts remaining hundreds after subtracting thousands
  tens = (num % 100 / 10)       # Counts remaining tens
  ones = (num % 10 / 1)         # Counts remaining ones

  numeral = 'M' * thousands     # Easily add number of 'M' to the numeral

  if hundreds == 9              # Looks at number of hundreds, if 9, then we need
    numeral = numeral + 'CM'    # to use the special characters.
  elsif hundreds == 4           # The same goes for 4
    numeral = numeral + 'CD'
  else                          # If not 4 or 9, can revert back to basic method
    numeral = numeral + 'D' * (num % 1000 / 500)
    numeral = numeral + 'C' * (num % 500 / 100)
  end

  if tens == 9                  # Repeats for tens and ones
    numeral = numeral + 'XC'
  elsif tens == 4
    numeral = numeral + 'XL'
  else
    numeral = numeral + 'L' * (num % 100 / 50)
    numeral = numeral + 'X' * (num % 50 / 10)
  end

  if ones == 9
    numeral = numeral + 'IX'
  elsif ones == 4
    numeral = numeral + 'IV'
  else
    numeral = numeral + 'V' * (num % 10 / 5)
    numeral = numeral + 'I' * (num % 5 / 1)
  end

numeral

end

puts (roman_numeral(2014))
