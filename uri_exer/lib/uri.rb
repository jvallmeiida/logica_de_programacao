class Uri
  def calcular_compras(code_product, units_product, prices_product)
    value = []
    units_product.each_with_index do |unit_product, index_unit|
      prices_product.each_with_index do |price_product, index_price|
        if index_unit == index_price
          value << unit_product * price_product
        end
      end
    end
    total = value.reduce { |sum, num| sum + num }

    "VALOR A PAGAR: R$ #{'%.2f' % total}"
  end
end
