class Sku
  attr_reader :code, :product, :price, :quantity

  def initialize( code, product='', price=0, quantity=0 )
    @code = code
    @product = product
    @price = price
    @quantity = quantity
  end

  def purchase
    @quantity -= 1 if @quantity > 0
  end
end
