class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "The article has been created"
      redirect_to root_path
    else
      flash[:alert] = "The article couldn't be created"
      render 'new'
    end
  end

private

  def article_params
    params.require(:article).permit(:title,:body)
  end
end
