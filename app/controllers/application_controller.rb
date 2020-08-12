class MortgagesController < ApplicationController
  def index
    @mortgages = Mortgage.all
  end
end

class RentalProperty
  attr_reader :num_units ; :price ; :rent ; :property_taxes
  def initialize (num_units, price, rent, property_taxes)
    @units = num_units
    @price = price
    @rent = rent
    @ptaxes = property_taxes
  end

  puts "How many units does the property have?"
  @units = gets.chomp
  puts "Asking Price?"
  @price = gets.chomp
  puts "What is the estimated rent per unit?"
  @rent = gets.chomp
  puts "What are the ANNUAL property taxes?"
  @ptaxes = gets.chomp

  if @units <= 1
    rate == 0.10
  else
    rate == 0.15
  end

  downpayment = @price * rate
  closing_cost = 5,500
  total_investment = downpayment + closing_cost

  i = 3.3
  balance = @price - downpayment
  basic_mortgage_payment = balance * (( i / 1200 ) * ( 1 + ( i / 1200 ))^360 ) / (( 1 + ( i / 1200 ))^360 - 1 ), 2

  total_monthly_mortgage = basic_mortgage_payment + (property_taxes/12)

  rental_income = @rent * @units

  profit = rental_income - total_monthly_mortgage
  annual_return = profit / total_investment
end