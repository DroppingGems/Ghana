# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resource :mortgages
end

class Property
  attr_reader :type ; :address ; :bedroom ; :bathroom ; :sqft ; :price
  def initialize (type, address, bedroom, bathroom, sqft, price)
    @type = type
    @add = address
    @bed = bedroom
    @bath = bathroom
    @feet = sqft
    @price = price
  end

  puts "What type of property?\n(a)Single Family\n(b)Multi-Family"
  @type = gets.chomp
  puts "What is the address?"
  @add = gets.chomp
  puts "How many bedrooms?"
  @bed = gets.chomp
  puts "How many bathrooms?"
  @bath = gets.chomp
  puts "How many square feet?"
  @feet = gets.chomp
  puts "Asking Price?"
  @price = gets.chomp

  downpayment = @price * rate
  closing_cost = 5,500
  total_investment = downpayment + closing_cost

  if @type == "a"
    rate == 0.10
  else
    rate == 0.15
  end

  i = 3.3
  mortgage = (balance * (( i / 1200 ) * ( 1 + ( i / 1200 )) ^ Length ) / (( 1 + ( i / 1200 )) ^ Length - 1 ), 2 )


end