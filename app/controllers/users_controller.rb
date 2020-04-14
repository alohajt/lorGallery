class UsersController < ApplicationController
    def index
        # fetch(url, {
        #     method:"GET", 
        #     headers: {
        #         "Content-Type": "application/json",
        #         "Authorization": `Bearer ${JWT}`
        #     }
        # })
        authenticate
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
