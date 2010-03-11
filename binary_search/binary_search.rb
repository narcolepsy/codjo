require 'test/unit/ui/console/testrunner'
require 'binary_test'
def chop(int, arr_of_int)
   if arr_of_int.length == 0
      puts 'ZERO ARRAY LENGTH'
      return -1
   else
      lower = 0
      upper = arr_of_int.length-1
      found = -1
      while found != int
      #go through the loop
         mid = arr_of_int[((upper-lower)/2).floor]
         puts mid
         if (mid > int)
            upper = mid
         elsif (mid > int)
            lower = mid
         elsif (upper == lower)
            return arr_of_int[lower]
         else
            found = int
         end
      end
   end
   return found      
end

Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
