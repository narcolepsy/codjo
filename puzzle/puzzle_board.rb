class Puzzleboard


def initialize
   @grid = ["a","d","e","f","b","h","c","g","="]
   @length = @grid.length
   @width = Math.sqrt(@length)
end #initialize
def to_s
   b = [@grid[0], @grid[1], @grid[2], "\n", @grid[3], @grid[4], @grid[5], "\n",  @grid[6], @grid[7], @grid[8]].join 
end
def print_board
   @grid.each_with_index do |i,index|
      print i
      print "\n" if (index+1)%(@width)==0      
   end
end
def find_space
   @grid.index("=")
end
def up
#make sure this is valid
   puts"Attempting to move UP"
   curr_index = find_space
   if(curr_index - @width) > 0
      @grid[curr_index] = @grid[curr_index - @width]
      @grid[curr_index - @width] = "="
      print_board
      return true
   else
      puts "Trying to go from index #{curr_index} to #{curr_index - @width}"
      return false
   end
end

def down
#make sure this is valid
   puts"Attempting to move DOWN"
   curr_index = find_space
   if(curr_index + @width) < @length
      @grid[curr_index] = @grid[curr_index + @width]
      @grid[curr_index + @width] = "="
      print_board
      return true
   else
      puts "Trying to go from index #{curr_index} to #{curr_index + @width}"
      return false
   end
end

def left
#makesure this is valid
   puts"Attempting to move LEFT"
   curr_index = find_space
   if(curr_index % @width) == 0
      puts "Trying to wrap the index round: not valid left"
      return false
   else
      @grid[curr_index] = @grid[curr_index -1]
      @grid[curr_index - 1] = "="
      print_board
      return true
   end
end

def right
#makesure this is valid
   puts"Attempting to move RIGHT"
   curr_index = find_space
   if(curr_index % @width) == (@width-1)
      puts "Trying to wrap the index round: not valid right"
      return false
   else
      @grid[curr_index] = @grid[curr_index +1]
      @grid[curr_index + 1] = "="
      print_board
      return true
   end
end


end #class

a = Puzzleboard.new
puts a
puts "Trying new array print method"
a.print_board
puts "Trying to find the array index for hole"
a.find_space
a.up
a.down
a.right
a.left

#Try to solve it by doing moves by myself
puts "BRISCOE SAYS GO UP!"
a.up

