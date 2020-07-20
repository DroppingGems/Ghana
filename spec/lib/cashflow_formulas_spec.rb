require 'rails_helper'

RSpec.describe CashflowFormulas do
  let(:interest_rate) {0.10}
  let(:investment_amount) {20000}
  let(:periods) {6}
  let(:cash_flow) {8000}
  describe "futurevalue" do
    it "should return FV " do
      f = CashflowFormulas.futurevalue(interest_rate, periods, investment_amount)
      expect(f).to eq 71_440.49
      # expect(f).to eq (f.investment_amount * (1 + f.interest_rate)**f.periods)
    end
  end
  describe "presentvalue" do
    it "should return PV" do
      f = CashflowFormulas.new(interest_rate, periods, investment_amount)
      expect(f.presentvalue).to eq (f.futurevalue / (1 + f.interest_rate)**f.periods)
    end
  end
  describe "npv" do
    it "should return sigma = (t+1, n)(Rt / (1+i)^t)" do
      f = CashflowFormulas.new(interest_rate, periods, net_cash_flow)
      expect(f.npv).to eq (f.net_cash_flow / (1 + f.interest_rate)**f.periods)
    end
  end
  # describe "irr" do
  #   it "should return (Today's Value of Expected Cash flows) - (Today's Value of Invested Cash)" do
  #     f = CashflowFormulas.new(interest_rate, periods, investment_amount)
  #     expect(f.irr).to eq (f.npv = 0)
  #   end
  # end
end
