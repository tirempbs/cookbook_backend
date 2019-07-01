class Api::V1::CookbookRecipesController < ApplicationController
  before_action :find_cookbook_recipe, only: [:show, :update, :destroy]

    def index
        @cookbook_recipes = CookbookRecipe.all
        render json: @cookbook_recipes, status: :ok
    end

    def show
        render json: @cookbook_recipe, status: :ok
    end

    def create    
        @cookbook_recipe = CookbookRecipe.create(cookbook_recipe_params)
        if @cookbook_recipe.valid?
            render json: @cookbook_recipe, status: :ok
        else
            render json: @cookbook_recipe.errors.full_messages, status: :not_acceptable
        end
    end

    def update
        @cookbook_recipe.update(cookbook_recipe_params)
        render json: @cookbook_recipe, status: :ok
    end

    def destroy
        @cookbook_recipe.destroy
        render json: @cookbook_recipes, status: :ok
    end

    private

    def find_cookbook_recipe
        @cookbook_recipe = CookbookRecipe.find_by(id: params[:id])
    end

    def cookbook_recipe_params
        params.require(:cookbook_recipe).permit(:cookbook_id, :recipe_id)
    end
end
