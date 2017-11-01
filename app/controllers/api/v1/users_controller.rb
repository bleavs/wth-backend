class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:index]

    def index
      @users = User.all
      render json: @users, status: 200
    end

    def profile
      if current_user #current_user comes from application controller; it finds current user by id found in decoded JWT token
        render json: current_user, status: 200
      else
        render json: { message: "User not found" }, status: 404
      end
    end


end
