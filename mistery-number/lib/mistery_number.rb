class MisteryNumber
  def calculate(operation)
    i = 0
    result = false
    while result == false
      calc = operation.gsub(/[?=]/, '?' => i.to_s, '=' => '==')
      result = eval(calc)
      result == false ? i += 1 : break
    end
    i
  end
end
