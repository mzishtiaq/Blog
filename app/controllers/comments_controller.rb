class CommentsController < ApplicationController

  def create
    @article = Article.friendly.find(params[:article_id])
    @comment = @article.comments.new(comments_params)
    if @comment.save
      flash[:notice] = "Thank you for commenting"
      redirect_to article_path(@article)
    else
      flash[:alert] = "Your comment couldn't be added"
      redirect_to article_path(@article)
    end
  end

private

  def comments_params
    params.require(:comment).permit(:user_name, :body)
  end
end
