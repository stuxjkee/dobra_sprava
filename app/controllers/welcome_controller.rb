class WelcomeController < ApplicationController
  def index
  	@projects = Project.order('created_at DESC').limit(3);
  	@orders = Order.order('created_at DESC').limit(3);
  end

  def about
  	
  end

end
