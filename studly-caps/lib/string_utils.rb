class StringUtils
  def wavefy(string)
   result = ""
   step = 0
   string.each_char do |char|
     if step.even?
       result << char.downcase
     else
       result << char.upcase
     end
      step += 1
    end
    result
  end
end
