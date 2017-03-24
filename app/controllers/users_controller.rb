class UsersController < ApplicationController
  def show
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
    @nickname = user.nickname
    user = User.find(params[:id])
  end
end
