class Mortgages
  attr_reader :price ; :units ; :percentage ; :interest ; :property_taxes ; :closing_cost
  def initialize (price, units, percentage, interest, property_taxes, closing_cost)
    @price = price
    @units = units
    @percentage = percentage
    @interest = interest
    @proptax = property_taxes
    @closing_cost = closing_cost
  end
end

def downpayment
  if @units <= 1
    @percentage = 0.10
  else
    @percentage = 0.15
  end
  @price * @percentage
end

def total_investment
  downpayment + closing_cost
end

def monthly_mortgage
  loan_amount = @price - downpayment
  basic_mortgage = loan_amount * (( @interest / 1200 ) * ( 1 + ( @interest / 1200 ))^360 ) / (( 1 + ( @interest / 1200 ))^360 - 1 ), 2
  basic_mortgage + (@proptax/12)
end
