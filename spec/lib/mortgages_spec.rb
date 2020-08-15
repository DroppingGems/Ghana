require 'rails_helper'

describe 'Mortgages' do
  let(:price) {150000}
  let(:units) {1}
  let(:percentage) {}
  let(:interest) {0.033}
  let(:property_taxes) {1200}
  let(:closing_cost) {3500}
  describe "downpayment" do
    it "should calculate the downpayment amount relative to the number of units" do
      f = Mortgages.new(price, units, percentage, interest, property_taxes, closing_cost)
      expect(f.downpayment).to eq(f.price * f.percentage)
    end
  end

  describe "total_investment" do
    it "should calculate the total initial investment"
    f = Mortgages.new(price, units, percentage, interest, property_taxes, closing_cost)
    expect(f.total_investment).to eq(f.downpayment + f.closing_cost)
  end

  describe "monthly_mortgage" do
    it "should calculate the total monthly mortgage payment"
    f = Mortgages.new(price, units, percentage, interest, property_taxes, closing_cost)
    expect(f.monthly_mortgage).to eq(f.basic_mortgage + (f.property_taxes/12))
  end

  context 'when condition' do
    it 'succeeds' do
      pending 'Not implemented'
    end
  end
end