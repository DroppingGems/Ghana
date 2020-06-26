class Cashflow
  attr_reader :discount_rate
  attr_reader :periods

  def initialize(futurevalue, presentvalue, discount_rate, periods)
    @futurevalue = futurevalue
    @presentvalue = presentvalue
    @discount = discount_rate
    @periods = periods
  end
  def futurevalue
    presentvalue * (1 + discount_rate)^periods
  end
  def presentvalue
    futurevalue / (1 + discount_rate)^periods
  end
  def discount_rate
    (futurevalue/presentvalue)^(1/periods) - 1
  end
  def periods
    logarithm(futurevalue / presentvalue) / logarithm(1 + discount_rate)
  end
end