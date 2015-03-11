class Abbreviator

  def self.abbreviate(string)
    words = []
    words << string.split
    words.flatten!
    words.map! { |word| process(word) }
    words.join(' ')
  end
end

def process(string)
  pair = []
  if string.include? '-'
    pair << string.split('-')
    pair.flatten!
    shorten(pair[0]) + '-' + shorten(pair[1])
  else
    shorten(string)
  end
end

def shorten(string)
  seperator = ''
  if string[-1] =~ /\W/
    seperator = string[-1]
    string = string[0..-2]
  end
  if string.length >= 4
    string[0] + (string.length-2).to_s + string[-1] + seperator
  else
    string + seperator
  end
end

#Best solution:
class Abbreviator2
  def self.abbreviate(string)
    string.gsub(/([a-z]{4,})/i){|m| m[0] + "#{m.length - 2}" + m[-1]}
  end
end
# [a-z] => Any single character in the range a-z
# i     => case insensitive
# a{3,} => 3 or more of a

# You need, need not want, to complete this code-wars mission.
#            You n2d, need not w2t, to c6e this c2e-w2s m5n. - 
# Expected: "   You n2d, n2d not w2t, to c6e t2s c2e-w2s m5n."
# instead got: "You n2d, need not w2t, to c6e this c2e-w2s m5n."

# Expected: You, and I, s4d s3k
# x = %w(hello there world)
# x.collect! { |element|
#   (element == "hello") ? "hi" : element
# }
# puts x