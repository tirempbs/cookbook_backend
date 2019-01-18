class Api::V1::CookbooksController < ApplicationController
    before_action :find_cookbook, only: [:show, :update, :destroy]

    def index
        @cookbooks = Cookbook.all
        render json: @cookbooks, status: :ok
    end

    def show
        render json: @cookbook, status: :ok
    end

    def create    
        @cookbook = Cookbook.create(cookbook_params)
        if @cookbook.valid?
            render json: @cookbook, status: :ok
        else
            render json: @cookbook.errors.full_messages, status: :not_acceptable
        end
    end

    def update
        @cookbook.update(cookbook_params)
        render json: @cookbook, status: :ok
    end

    def destroy
        @cookbook.destroy
        render json: @cookbooks, status: :ok
    end

    private

    def find_cookbook
        @cookbook = Cookbook.find_by(id: params[:id])
    end

    def cookbook_params
        params.require(:cookbook).permit(:user_id, :title)
    end

end #end of Cookbooks controller
