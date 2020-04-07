class ArticlesController < ApplicationController

  def index
    @articles = @articles.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @article = Article.new()
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :categories, :content)

  end
end
