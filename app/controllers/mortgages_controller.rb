class MortgagesController < ApplicationController
  def index
    @mortgages = Mortgage.all
  end
end

  puts "How many units does the property have?"
  @units = gets.chomp
  puts "Asking Price?"
  @price = gets.chomp
  puts "What is the estimated rent per unit?"
  @rent = gets.chomp
  puts "What are the ANNUAL property taxes?"
  @ptaxes = gets.chomp

