require "rails_helper"

  RSpec.describe Financial do
    let(:wage) { 20 }
    let(:hours) {40}
    let(:rate) {0.25}
    describe "net_income" do
      it "should return gross - taxes" do
        f = Financial.new(wage, hours, rate)
        expect(f.net_income).to eq (f.gross - f.taxes)
      end
      describe "gross" do
        it "should return wage * hours" do
          f = Financial.new(wage, hours, rate)
          expect(f.gross).to eq (f.wage * f.hours)
        end
        describe "taxes" do
          it "should return gross * rate" do
            f = Financial.new(wage, hours, rate)
            expect(f.taxes).to eq (f.grossr * f.rate)
          end
        end
      end
    end
  end