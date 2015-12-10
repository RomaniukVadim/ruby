require_relative "item_container"
require_relative "order"
require_relative "cart"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

@items = []
@items << VirtualItem.new({:price => 101, :weight => 100, :name => 'car'})
@items << RealItem.new({:weight => 100, :price => 10,:name => 'kettle'})
@items << RealItem.new({:weight => 100, :price => 10,:name => 'dishwasher'})

#item.info {|attr| puts attr}

#cart = Cart.new

#cart.add_item item1
#cart.add_item item2
#cart.add_item item2

#puts cart.items.size



#puts item1.real_price


#p cart.items
#
#cart.delete_invalid_items
#
#p cart.items
#
#p item1.respond_to?(:weight)
#p item2.respond_to?(:weight)


#cart = Cart.new
#
#cart.add_item(Item.new)
#cart.add_item(Item.new)
#
#p cart.items
#cart.remove_item
#p cart.items
#
#cart.validate
