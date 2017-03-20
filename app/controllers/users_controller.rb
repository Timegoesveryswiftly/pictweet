class UsersController < ApplicationController
  def show
    @tweets =  current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
    @nikckname = current_user.nickname
  end
end
