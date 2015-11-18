require_dependency 'author/application_controller'

module Author
  class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :preview, :edit, :destroy, :update]

    def index
      @articles = Article.all.order('created_at DESC')
    end

    def show
    end

    def preview
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(set_params)

      if @article.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end
    end

    def edit
    end

    def update
      if @article.update(set_params)
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
    end
    
    def destroy
    end

    private

    def set_params
      params.require(:article).permit(:title, :content)
    end

    def set_article
      @article = Article.find(params[:id])
    end
  end
end