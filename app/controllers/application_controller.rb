class ApplicationController < ActionController::API
    def authenticate
        begin
            authorization_header = request.headers["Authorization"]
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secret.secret_key_base
            decoded_token = JWT.decode(token, secret)
        rescue
            render json: { message: "won't work"}
        end
    end
end
