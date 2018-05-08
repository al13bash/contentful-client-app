class CategoriesController < ApplicationController
  def index
    @categories = ContentService.categories
  end

  def show
    articles = ContentService.articles(params[:title], params[:page] || 1)
    @articles = Kaminari.paginate_array(articles.to_a, total_count: articles.total).page(params[:page]).per(8)
  end
end
