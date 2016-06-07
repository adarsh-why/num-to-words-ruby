def num_to_word(int)
    word_list = {
        1000 => "thousand",
        100  => "hundred and",
        90   => "ninety",
        80   => "eighty",
        70   => "seventy",
        60   => "sixty",
        50   => "fifty",
        40   => "forty",
        30   => "thirty",
        20   => "twenty",
        19   => "nineteen",
        18   => "eighteen",
        17   => "seventeen", 
        16   => "sixteen",
        15   => "fifteen",
        14   => "fourteen",
        13   => "thirteen",              
        12   => "twelve",
        11   => "eleven",
        10   => "ten",
        9    => "nine",
        8    => "eight",
        7    => "seven",
        6    => "six",
        5    => "five",
        4    => "four",
        3    => "three",
        2    => "two",
        1    => "one"
    }

    str = ""
    word_list.each do |num, name|
    
      if int == 0
        	return str
      elsif int.to_s.length == 1 && int/num > 0
        	return str + "#{name}"      
      elsif int < 100 && int/num > 0
        	return str + "#{name} " + num_to_word(int%num)
      elsif int < 1000 && int/num > 0
      	str += word_list[(int/100)]
        	return str + " #{name} " + num_to_word(int%num)
      end
    end
end

puts num_to_word(4)
puts num_to_word(27)
puts num_to_word(100)
puts num_to_word(587)