class AdminController < ApplicationController
    # load_and_authorize_resource
    before_action :set_users
    before_action :set_roles
    before_action :set_user, only: [ :edit, :update ]


    def admin
    end
    def race_course
    end
    def race
    end


    def authorize_tipper
    end


    def update
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to admin_authorize_tipper_path, notice: 'User was successfully updated.' }
            format.json { render :show, status: :ok, location: @user }
          else
            format.html { render :edit }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end


  




    private

    def set_users
        @users = User.all
        @cuser = current_user

    end

    def set_roles
        @allroles = Role.all

    end


    def set_user
        @user = User.find(params[:id])
      end


    def user_params
        params.require(:user).permit(:username, :user_id, role_ids: [])
      end


end
