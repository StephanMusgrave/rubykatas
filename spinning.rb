def spinWords(string)
  string.gsub(/([a-z]{5,})/i){|word| word.reverse}
end

# Best solution:
def spinWords2(string)
  string.gsub(/\w{5,}/, &:reverse)
end