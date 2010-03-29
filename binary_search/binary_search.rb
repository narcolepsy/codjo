require 'test/unit/ui/console/testrunner'
require 'binary_test'
def chop(int, arr_of_int)
   if arr_of_int.length == 0
      puts 'ZERO ARRAY LENGTH'
      return -1
   else
      lower = 0
      if arr_of_int[lower] == int
         return lower
      end
      upper = arr_of_int.length-1
      if arr_of_int[upper] == int
         return upper
      end
      found = -1
      while (1) #found != int 
      #go through the loop
         mid = ((upper-lower)/2.0).floor
         puts mid
         if (arr_of_int[mid] > int)
            upper = mid
            puts "mid1 = #{lower} < #{mid} < #{upper}"
         elsif (arr_of_int[mid] < int)
            lower = mid
            puts "mid2 = #{lower} < #{mid} < #{upper}"
         else
            puts "Found @ mid -> #{mid}"
            return mid
         end

         if (upper == lower)
            puts "arr_of_int = #{arr_of_int[lower]}"
            if (arr_of_int[lower] == int)
               return lower
            else
               return -1
            end
         else
            found = int
            puts "found = #{found}"
         end
      end
   end
   return mid
end

Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
