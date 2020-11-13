class ProfileController < ApplicationController
# load_and_authorize_resource
before_action :authenticate_user! 
before_action :set_user

def home
end




private

def set_user
    @user = current_user 
end


end
