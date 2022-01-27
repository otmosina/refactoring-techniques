

class Order__Before
  def price
    primaryBasePrice = 10
    secondaryBasePrice = 100
    tertiaryBasePrice = 1000

    primaryBasePrice**secondaryBasePrice*tertiaryBasePrice
  end
end


class PriceCalculator
  def initialize
    @primaryBasePrice = 10
    @secondaryBasePrice = 100
    @tertiaryBasePrice = 1000
  end

  def compute
    @primaryBasePrice**@secondaryBasePrice*@tertiaryBasePrice
  end
end

class Order__After
  def price
    PriceCalculator.new.compute()
  end
end

p Order__Before.new.price
p Order__After.new.price