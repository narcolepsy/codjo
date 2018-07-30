require 'test/unit/ui/console/testrunner'
require './binary_test.rb'

#Recoding as a recursive function
def chop(int, arr_of_int, start_idx=0)
  puts "called chop with int=#{int} arr_of_int=#{arr_of_int} start_idx=#{start_idx}"
  #We want to return -1 if the array is empty or search term is out-of-bounds
  return -1 if arr_of_int.empty?
  return -1 if arr_of_int[0] > int
  return -1 if arr_of_int[-1] < int
  #Return start idx (as we may be taking in a sliced array with non-zero start term
  return start_idx if arr_of_int[0] == int
  #Return end idx of split array
  return (start_idx - 1 + arr_of_int.length) if arr_of_int[-1] == int
  #Now decide which half of the split to look at and call chop on it again
  #Floor the midway point
  split_point = (arr_of_int.length/2.0).floor
  puts "splitpoint = #{split_point} with array = #{arr_of_int}"
  puts "upper = #{arr_of_int[(split_point...arr_of_int.length)]} / lower = #{arr_of_int[(0...split_point)]}"
  if arr_of_int[split_point] == int
    puts "found match at split point"
    return split_point
  elsif arr_of_int[split_point] < int
    puts "think the match is in the upper split"
    chop(int,arr_of_int[(split_point...arr_of_int.length)], split_point)
  else
    puts "think the match is in the lower split"
    chop(int,arr_of_int[(0...split_point)], 0)
  end
end

Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
