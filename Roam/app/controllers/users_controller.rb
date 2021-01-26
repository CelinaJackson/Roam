class UsersController < ApplicationController

    def index 
    end 

    def show 
    end 

    def new 
        @user = User.new(user_params)
    end 

    def create 
        @user = User.create(user_params)
        @user.save 
        redirect_to user_path(@user)
    end 

    def edit 
    end 

    def update 
    end 

    def destroy 
    end 

    private 

    def user_params 
        params.require(:user).permit(:first_name, :last_name, :home_city, :email, :email_confirmation)
    end 
end 