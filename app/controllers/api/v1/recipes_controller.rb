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

    def search
        q = params[:q]
        response = RestClient.get("https://api.yummly.com/v1/api/recipes?q=#{q}&_app_id=adebbd82&_app_key=8f8063f5a2135156a18644437bb04e63")
        @results = JSON.parse(response)["matches"]
        render json: @results
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
