class Uri
  attr_reader :code_product, :units_product, :prices_product

  # To initialize the properties of a class we can use the initialize method
  # which is called before any method.
  def initialize(code_product:, units_product:, prices_product:)
    @code_product = code_product
    @units_product = units_product
    @prices_product = prices_product
  end

  def calcular_compras
    # zip method creates an array of arrays according to its index, example:
    # a = [1, 2, 3]
    # b = [4, 5, 6]
    # a.zip(b) = [[1, 4], [2, 5], [3, 6]]
    units_product.zip(prices_product)
    # map generates a new array by multiplying each array of arrays
    # and generating the values of each purchased item
                 .map { |arr| arr.reduce(:*) }
    # reduce takes these values from purchased items and sums them back to a final result
                 .reduce(:+)
    # then passes the parameter q is between | q is the result of the previous expression
                 .then { |total| "VALOR A PAGAR: R$ #{format('%.2f', total)}" }
  end
end
