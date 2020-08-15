class RentalProperty
  attr_reader :rent
  def initialize (rent)
    @rent = rent
  end
end

  def profit
    rental_income = @units * @rent
    rental_income - monthly_mortgage
  end

  def arr
    (profit * 12) / total_investment
  end