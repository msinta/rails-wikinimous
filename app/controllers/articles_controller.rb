class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def delete
    @article = Article.find(params[:id])
    @article.destory
    redirect_to articles_path, status: :unprocessable_entity
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit, status: unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
