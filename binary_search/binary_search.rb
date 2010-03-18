require 'test/unit/ui/console/testrunner'
require 'binary_test'
def chop(int, arr_of_int)
   if arr_of_int.length == 0
      puts 'ZERO ARRAY LENGTH'
      return -1
   else
      lower = 0
      if arr_of_int[lower] == int
         return int
      end
      upper = arr_of_int.length-1
      if arr_of_int[upper] == int
         return int
      end
      found = -1
      while found != int do
      #go through the loop
         mid = ((upper-lower)/2).floor
         puts mid
         if (arr_of_int[mid] > int)
            upper = mid
         elsif (arr_of_int[mid] > int)
            lower = mid
         elsif (upper == lower)
            if (arr_of_int[lower] == int)
               return arr_of_int[lower]
            elsif
               return -1
            end
         else
            found = int
         end
      end
   end
   return found      
end

Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
