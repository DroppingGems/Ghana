module Cashflow
  module Formulas
    extend self

    def futurevalue(investment_amount, interest_rate, periods, cash_flow)
      investment_amount * (1 + (interest_rate * periods))
      #futurevalue = cash_flow ((1+interest_rate)^ periods - 1) / interest_rate)
    end

    def presentvalue(cash_flow, interest_rate, periods)
      cash_flow / ((1 + interest_rate)**periods)
    end

    def npv(cash_flow, investment_amount, interest_rate, periods)
      # npv = sigma (t=1, n)(Rt / (1+i)^t)
      Array(1..periods).map do |n|
        numerator = ((cash_flow - investment_amount) * n)
        denominator = (( 1+ interest_rate)**n)
        numerator / denominator
      end.sum
    end
  end
end