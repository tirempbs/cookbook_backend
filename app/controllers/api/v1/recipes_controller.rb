class Api::V1::RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :update, :destroy]

    def index
        @recipes = Recipe.all
        render json: @recipes, status: :ok
    end

    def show
        render json: @recipe, status: :ok
    end

    def create    
        @recipe = Recipe.create(recipe_params)
        if @recipe.valid?
            render json: @recipe, status: :ok
        else
            render json: @recipe.errors.full_messages, status: :not_acceptable
        end
    end

    def update
        @recipe.update(recipe_params)
        render json: @recipe, status: :ok
    end

    def destroy
        @recipe.destroy
        render json: @recipes, status: :ok
    end

    private

    def find_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(
            :title, 
            :image_url, 
            :source_url, 
            :publisher_name, 
            :publisher_url,
            :user_generated
            )
    end

end
