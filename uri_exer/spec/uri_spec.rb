require 'spec_helper'

describe 'Calcular' do
  it 'calcular compras com produtos' do
    code_product = [1, 2, 3]
    units_product = [2, 4, 1]
    prices_product = [10.5, 10.0, 8.0]

    expect(Uri.new(code_product: code_product, units_product: units_product,
                   prices_product: prices_product).calcular_compras).to eq("VALOR A PAGAR: R$ 69.00")
  end
end
