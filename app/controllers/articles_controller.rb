class ArticlesController < ApplicationController
  def show
    @article = ContentService.article(params[:slug])
  end
end
