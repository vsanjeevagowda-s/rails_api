module Api
	module V1
		class UsersController < ApplicationController
			def create
				@user=User.new(users_params)
				if @user.save
					render json: {message: "success", data: @user, status_code: 200}
				else
						render json: {message: "success", data: @user, status_code: 200}
				
			end
		end




		def users_params
			params.require(:user).permit(:user_name, :user_age, :role, :gender)
			
		end
	end
end 
end