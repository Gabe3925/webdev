class VendingMachine
  attr_reader :status, :code, :credit, :change, :purchases

  def initialize(inventory=[])
    @status = ''
    @code = ''
    @credit = 0
    @change = 0
    @purchases = []
    @inventory = inventory
  end

  # Go...!
  def get_sku(code)
    return @inventory.find do |s|
     s.code == code
    end
  end

  def insert_cash(cash)
    @credit += cash
  end

  def enter_code(code)
    @code = code
  end

  def refund
    @change += @credit
    @credit = 0
    self.enter_code('')
    @status = ''
  end

  def vend
    if get_sku(@code) == nil
      @status = "Please enter a valid code."
      enter_code("")

    elsif get_sku(@code).quantity == 0
      @status = "Out of stock."
      enter_code("")
    elsif credit < get_sku(@code).price
      @status = "Insufficient funds. Selected item costs $#{get_sku(@code).price}"
    else
      get_sku(@code).purchase
      @credit -= get_sku(@code).price
      @change += @credit
      @credit = 0
      @purchases.push(get_sku(@code))

    end

  end
end
