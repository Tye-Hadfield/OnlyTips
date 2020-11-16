class TippersController < ApplicationController
before_action :set_users
before_action :set_user, only: [:show ]


def show
    

end




private

def set_users
    @users = User.all
    @cuser = current_user

end

def set_user
    @user = User.find(params[:id])
  end




end
