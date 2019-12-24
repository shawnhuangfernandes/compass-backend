class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
    # GET /users
    def index
        @users = User.all
        render json: @users
    end

    # POST /users
    def create
        @user = User.create!(user_params)
        render json: @user
    end

    # GET /users/:id
    def show
        render json: @user
    end

    # PUT /users/:id
    def update
        @user.update(user_params)
        render json: @user
    end

    # DELETE /users/:id
    def destroy
        @user.destroy
        render json: User.all
    end

    private

    def user_params
        # whitelist params
        params.permit(:username, :name, :icon_gif)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
