class CashRegister
  attr_accessor :discount , :total 
  attr_reader :items
  
  
  def initialize (discount=0) 
    @discount= discount 
    @total=0
    @items=[]
  end 
  
  def add_item(title, price, quantity=1)
    @total += price*quantity
    @items << title
  end
    
    # 
    # #quantity.times.do
    # #@items << title
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
      @total = @total - (@total / 100 * @discount)
      "After the discount, the total comes to $#{@total}."
    end 
   end 
  
  def item 
    
end 
