class ApplicationController < ActionController::API
    def authenticate
        begin
            authorization_header = request.headers["Authorization"]
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secret.secret_key_base
            decoded_token = JWT.decode(token, secret)
            
            @users = User.all
            render json: @users
        rescue
            render json: "invalid"
        end
    end
end
