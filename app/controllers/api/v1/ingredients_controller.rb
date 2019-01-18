class Api::V1::IngredientsController < ApplicationController
    before_action :find_ingredient, only: [:show, :update, :destroy]

    def index
        @ingredients = Ingredient.all
        render json: @ingredients, status: :ok
    end

    def show
        render json: @ingredient, status: :ok
    end

    def create    
        @ingredient = Ingredient.create(ingredient_params)
        if @ingredient.valid?
            render json: @ingredient, status: :ok
        else
            render json: @ingredient.errors.full_messages, status: :not_acceptable
        end
    end

    def update
        @ingredient.update(ingredient_params)
        render json: @ingredient, status: :ok
    end

    def destroy
        @ingredient.destroy
        render json: @ingredients, status: :ok
    end

    private

    def find_ingredient
        @ingredient = Ingredient.find_by(id: params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:recipe_id, :line_item)
    end

end
