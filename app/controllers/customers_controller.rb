class CustomersController < ApplicationController
    def index
      @customers = Customer.all
    end
  
    def alphabetized
      @customers = Customer.order(:fullName)
    end
  
    def missing_email
      @customers = Customer.where(email: [nil, ''])
    end
  end
  