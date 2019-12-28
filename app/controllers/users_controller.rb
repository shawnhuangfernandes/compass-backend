class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
    # GET /users
    def index
        @users = User.all
        render json: @users
    end

    # POST /users
    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            render json: @user
        else
            render json: {
                error: "error"
            }
        end
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

    def findUser
        @user = User.find_by(username: params[:username])
        if @user
            render json: @user
        else
            render json: {
                message: "Did not find user!"
            }
        end
    end

    private

    def user_params
        params.permit(:username, :name, :icon_gif)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
