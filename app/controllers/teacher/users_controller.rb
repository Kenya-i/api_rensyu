class Teacher::UsersController < ApplicationController
  def index
    @user = Teacher::User.all
    render json: @user
  end
end
