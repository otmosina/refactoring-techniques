def has_discount_before(order)
  base_price = order.base_price
  return base_price > 1000
end

def has_discount_after(order)
  return order.base_price > 1000
end

Order = Struct.new(:base_price)
order = Order.new(2000)
p has_discount_before(order)
p has_discount_after(order)