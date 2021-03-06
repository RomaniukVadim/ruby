class Item

  @@discount = 0.1

  def self.discount
    if Time.now.month == 4
      return @@discount +0.2
    else
      return @@discount
    end
  end

  def initialize(options={})
    @real_price = options[:price]
    @name = options[:name]
  end
  attr_reader :real_price, :name    #getter
  attr_writer :price #setter
  #attr_accessor :price, :weight
  def info
    yield(price)
    yield(name)
  end

  def price

    (@real_price - @real_price*self.class.discount)+tax if @real_price
  end
  private
    def tax
      type_tax = if self.class == VirtualItem
        1
      else
        2
    end
    cost_tax = if @real_price > 5
       @real_price*0.2
     else
       @real_price*0.1
     end
     cost_tax +type_tax
  end
end
