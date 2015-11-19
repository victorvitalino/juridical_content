require_dependency 'administrator/application_controller'

module Administrator
  class ArticleCategoriesController < ApplicationController
    before_action :set_article_category, only: [:edit, :update, :destroy]
    def index
      @categories = Author::ArticleCategory.all.order('created_at DESC')
    end

    def new
      @category = Author::ArticleCategory.new
    end

    def create
      @category = Author::ArticleCategory.new(set_params)
      
      if @category.save
        flash[:success] =  t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end
    end

    def edit
    end

    def update
      if @category.update(set_params)
        flash[:success] =  t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end
    end

    def destroy
      if @category.destroy 
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end

      redirect_to action: 'index'
    end

    private

    def set_params
      params.require(:article_category).permit(:title, :description, :status, :only_user, :only_subscribes)
    end

    def set_article_category
      @category = Author::ArticleCategory.find(params[:id])
    end
    
  end
end
