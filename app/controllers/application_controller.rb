# class ApplicationController < ActionController::Base
#   def index
#   end
# end

class MortgagesController < ApplicationController
  def index
    @mortgages = Mortgage.all
  end
end
