require_dependency 'author/application_controller'

module Author
  class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :preview, :edit, :destroy]

    def index
    end

    def show
    end

    def preview
    end

    def new
    end

    def create
    end

    def edit
    end

    def create
    end

    def destroy
    end

    private

    def set_params
    end

    def set_article
    end
  end
end