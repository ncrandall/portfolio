class StaticController < ApplicationController
	def home
    render 'home', layout: "landing" 
	end

  def freelance
  end

  def contact
    @contact = Contact.new
  end

  def portfolio
  end
end
