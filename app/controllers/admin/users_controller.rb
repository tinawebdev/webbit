class Admin::UsersController < ApplicationController
  def index
    @users = User.all.sort
  end
end
