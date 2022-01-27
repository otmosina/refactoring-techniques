# module Init
#   attr_accessor :quantity, :item_price
#   def initialize params = {}
#     @quantity = 1000
#     @item_price = 2
#   end
# end

class Before
  attr_accessor :quantity, :item_price
  def initialize params = {}
    @quantity = 1000
    @item_price = 2
  end

  def calc_total
    base_price = quantity * item_price
    if base_price > 1000
      return base_price * 0.95
    else
      return base_price * 0.99
    end
  end
end


class After
  attr_accessor :quantity, :item_price
  def initialize params = {}
    @quantity = 1000
    @item_price = 2
  end

  def calc_total
    if base_price > 1000
      return base_price * 0.95
    else
      return base_price * 0.99
    end
  end

  def base_price
    quantity * item_price
  end
end


p Before.new.calc_total
p After.new.calc_total