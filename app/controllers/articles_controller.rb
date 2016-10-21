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

  def show
    find_article
  end

  def edit
    find_article
  end

  def update
    find_article
    if @article.update(article_params)
      flash[:notice] = "The article has been updated"
      redirect_to article_path(@article)
    else
      flash[:alert] = "The article coudn't be updated"
      render 'edit'
    end
  end

private

  def article_params
    params.require(:article).permit(:title,:body)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
