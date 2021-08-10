class UsersController < ApplicationController
    
    def create
        user = User.create(user_params)
        render json: user
    end

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: "user does not exist or password does not match."}
        end
    end

    private

    def user_params
        params.permit(:username, :profile_pic, :password)
    end
    
end
