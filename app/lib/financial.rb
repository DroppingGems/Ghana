class Financial
  attr_reader :wage
  attr_reader :hours
  attr_reader :rate

  def initialize(wage, hours, rate)
    @wage = wage
    @hours = hours
    @rate = rate
  end

  def gross
    @wage * @hours
  end

  def taxes
    gross * @rate
  end

  def net_income
    gross - taxes
  end
end
