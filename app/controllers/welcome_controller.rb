class WelcomeController < ApplicationController
  def index
  	@projects = Project.order('created_at DESC').limit(3);
  	@orders = Order.order('created_at DESC').limit(3);
  end

  def about
  	@content = File.read('about_html') 
  end

  def edit_about 

  end

  def update_about 
  	content = params[:content]
  	File.open('about_html', 'w') { |file| file.write content}
  	redirect_to '/about'
  end

end
