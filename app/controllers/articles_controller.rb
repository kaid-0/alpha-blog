class ArticlesController < ApplicationController
  # defining the show action for Articles
  def show
    @article = Article.find(params[:id])
  end
end