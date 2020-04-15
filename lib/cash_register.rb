class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @price = price
    @discount = discount
    @items = []
    @transactions = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    
    @transactions << price
    if quantity > 1
      counter = 0 
      while counter < quantity
      counter += 1
      @items << item
    end
  else 
    @items << item 
  end
end

def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
   self.total = @price - @items.pop
  end
end


