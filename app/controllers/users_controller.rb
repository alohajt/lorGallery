class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
            # ({"username": params[:username],
            # "password": params[:password]})
            render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
