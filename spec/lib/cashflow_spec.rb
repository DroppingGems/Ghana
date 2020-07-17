require 'rails_helper'

RSpec.decribe cashflow do
  let(:interest_rate) {0.10}
  let(:investment_amount) {20000}
  let(:periods) {6}
  let(:net_cash_flow) {5000}
  let(:cash_flow) {8000}
  descibe "futurevalue" do
    it "should return FV " do
      f = cashflow.new(interest_rate, periods, investment_amount)
      expect(f.futurevalue).to eq (f.investment_amount * (1 + f.interest_rate)**f.periods)
    end
  end
  describe "presentvalue" do
    it "should return PV" do
      f = cashflow.new(interest_rate, periods, investment_amount)
      expect(f.presentvalue).to eq (f.futurevalue / (1 + f.interest_rate)**f.periods)
    end
  end
  describe "npv" do
    it "should return sigma = (t+1, n)(Rt / (1+i)^t)" do
      f = cashflow.new(interest_rate, periods, net_cash_flow)
      expect(f.npv).to eq (f.net_cash_flow / (1 + f.interest_rate)**f.periods)
    end
  end
  describe "irr" do
    it "should return (Today's Value of Expected Cash flows) - (Today's Value of Invested Cash)" do
      f = cashflow.new(interest_rate, periods, investment_amount)
      expect(f.irr).to eq (f.npv = 0)
    end
  end
end
