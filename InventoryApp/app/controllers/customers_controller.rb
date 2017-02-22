 class CustomersController < ApplicationController

  def index
    @customers=Customer.all
  end
  
  def new
    @customers = Customer.new
  end
  
  
end
