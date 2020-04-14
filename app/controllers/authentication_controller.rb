class AuthenticationController < ApplicationController
    def login
        User.find_by(username: params[:username])

        if @user
           if @user.authenticate(params[:password])
            payload = { user_id: @user.id }
            secret = Rails.application.secret.secret_key_base
            token = JWT.encode(payload, secret)

            render json: "password match"
           else
            render json: "no such user"
           end
        else
            render json: "no such user"
        end
    end
end