class Sku
  attr_reader :code, :product, :price, :quantity

  def initialize(code, product, price, quantity)
    @code = code
    @product = product
    @price = price
    @quantity = quantity
  end

  def purchase!
    @quantity -= 1
  end

end
