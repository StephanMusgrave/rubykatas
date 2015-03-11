# Checkerboard method

def checkerboard(size)
  board = []
  row = 0
  column = 0
  for row in 0..size-1
    for column in 0..size-1
      if row.even?
        if column.even?
          board << "[_]"
        else
          board << "[x]"          
        end
      else
        if column.even?
          board << "[x]"
        else
          board << "[_]"
        end                    
      end
    end
    board << "\n"
  end
  board.join
end

# Best Codewars method
def checkerboard2(size)
  (0...size).map { |i|
    (0...size).map { |j| "[#{'rb'[(i + j) % 2]}]" }.join('') + "\n"
  }.join ''
end

puts checkerboard(12)
puts checkerboard2(12)

