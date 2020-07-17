class Cashflow
  attr_reader :interest_rate
  attr_reader :periods
  attr_reader :investment_amount
  attr_reader :cash_flow
  attr_reader :net_cash_flow

  def initialize(interest_rate, periods, investment_amount, cash_flow, net_cash_flow)
    @interest_rate = interest_rate
    @periods = periods
    @investment_amount = investment_amount
    @cash_flow = cash_flow
    @net_cash_flow = net_cash_flow
  end

  def futurevalue
    @investment_amount * (1 + (@interest_rate * @periods)
  end

  def presentvalue
    futurevalue / (1 + @interest_rate)**@periods
  end
  def npv
    # npv = sigma (t=1, n)(Rt / (1+i)^t)
    array (1..n).map { |n| @net_cash_flow(n) /( 1+ @interest_rate)**n }.sum
  end
  def irr (cash_flow)
    # 0 = sigma (t=1, n)(cash_flow / (1 + irr)^periods) - investment_amount
    array (1..n).map { |n| @cash_flow(n) / (1 + irr )**n }.sum
  end
end