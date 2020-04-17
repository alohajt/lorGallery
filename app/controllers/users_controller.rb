class UsersController < ApplicationController

    before_action :authenticate, only: [:index, :show]

    def index
        # fetch(url, {
        #     method:"GET", 
        #     headers: {
        #         "Content-Type": "application/json",
        #         "Authorization": `Bearer ${JWT}`
        #     }
        # })
        # begin
        #     authenticate
        #     @users = User.all
        #     render json: @users
        # rescue
        #     rescue_catch
        # end
        @users = User.all
        render json:@users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end


    def create
        @user = User.create(user_params)
            # ({"username": params[:username],
            # "password": params[:password]})
            render json: @user
    end

    def bookmarkImages
        user = User.find_by(username: params[:username])
        render json: user.bookmarks
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
