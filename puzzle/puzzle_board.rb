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
      print "\n" if (index+1)%3==0      
   end
end
def find_space
   @grid.index("=")
end
def up
#make sure this is valid
   curr_index = find_space
   if(curr_index - @width) > 0
      return true
   else
      puts "Trying to go from index #{curr_index} to #{curr_index - @width}"
      return false
   end
end

def down
#make sure this is valid
   curr_index = find_space
   if(curr_index + @width) < @length
      return true
   else
      puts "Trying to go from index #{curr_index} to #{curr_index + @width}"
      return false
   end
end

end #class

a = Puzzleboard.new
puts a
puts "Trying new array print method"
a.print_board
puts "Trying to find the array index for hole"
puts a.find_space
puts a.up
puts a.down
