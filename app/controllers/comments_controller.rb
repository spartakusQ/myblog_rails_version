class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:id])
    @article.comments.create ({ author: 'Mike', body: 'Hello'})
  end
end
