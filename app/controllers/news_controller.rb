class NewsController < ApplicationController

  load_and_authorize_resource


  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def destroy
    News.delete(params[:id])
    redirect_to '/news'
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(news_params)
      redirect_to @news 
    else
      render 'edit'
    end
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
