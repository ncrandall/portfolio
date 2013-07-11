class StaticController < ApplicationController
	def home
    render 'home', layout: "landing" 
	end

  def blog
    @posts = Post.all
  end

  def freelance
  end

  def projects
  end

  def startups
  end

  def contact
    @contact = Contact.new
  end
end
