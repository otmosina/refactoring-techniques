
class PizzaDelivery___Before
  attr_accessor :late_deliveries
  def initialize
    @late_deliveries = 6
  end
  def get_rating
    self.more_than_five_late_deliveries() ? 'BAD' : 'GOOD'
  end

  def more_than_five_late_deliveries
    self.late_deliveries > 5
  end
end

class PizzaDelivery___After
  attr_accessor :late_deliveries
  def initialize
    @late_deliveries = 6
  end
  def get_rating
    self.late_deliveries > 5 ? 'BAD' : 'GOOD'
  end
end

p PizzaDelivery___Before.new.get_rating
p PizzaDelivery___After.new.get_rating