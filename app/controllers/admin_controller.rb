class AdminController < ApplicationController
    # load_and_authorize_resource
    before_action :set_users
    before_action :set_roles

    def admin
    end
    def race_course
    end
    def race
    end


    def authorize_tipper
    end


    private

    def set_users
        @allusers = User.all

    end

    def set_roles
        @allroles = Role.all

    end



end
