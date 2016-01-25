class NewsController < ApplicationController

  load_and_authorize_resource


  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def destroy
  end

  def new
    @news = News.new
  end

  
  def create
    news = News.create(news_params)
    if news.save
      redirect_to news
    else
      flash[:danger] = "Something was wrong"
      redirect_to '/'
    end
  end

  private
  def news_params
    params.require(:news).permit(:title, :content, :image)
  end
end
