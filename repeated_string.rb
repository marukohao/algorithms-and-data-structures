#source: Cracking the coding interview, Gayle Mcdowell, chapter 1
#Given a string, compress it useing the counts of  repeated characters
#in: 'aabccccccaaaa'
#out: 'a2b1c6a4'
def repeated_char(string)
  new_string = ""
  i = 0
  count = 1
  while i < string.length
    if string[i] == string[i + 1]
      count += 1
      i += 1
    else
      new_string += string[i]
      new_string += count.to_s
      count = 1
      i += 1
    end
  end
  new_string
end