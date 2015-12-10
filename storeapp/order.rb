class Order
  include ItemContainer#::Manager
    #include ItemContainer::Info
    attr_reader:items


    def initialize
      @items = Array.new
      #...
    end
end
