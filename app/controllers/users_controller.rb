class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        find_user
    end

    def new
        @user = User.new
    end

    def edit
        find_user
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def update
        @user = find_user
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name)
    end

end
