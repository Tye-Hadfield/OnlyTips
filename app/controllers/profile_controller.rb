class ProfileController < ApplicationController
before_action :authenticate_user! 
# before_action :check_roles 



# private

# def check_roles
#    if !current_user.has_role? (:admin)
#     flash[:alert] = "You are not authorized to access that page"
#     redirect_to root_path
#    end
# end


end
