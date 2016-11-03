module Api
	module V1
		class MuviesController < ApplicationController
			def create
				@muvie=Muvie.new(muvies_params)
				if @muvie.save
					render json: {message: "success", data: @muvie, status_code: 200}
				else
						render json: {message: "success", data: @muvie, status_code: 422}
				
			end
		end

		def show
			binding.pry
			@muvie=Muvie.where(title:params[:title])
			render json: {message: "success", data: @muvie, status_code: 200}
		end

		def destroy
			@muvie=Muvie.find_by_id(params[:id])
			@muvie.destroy
			render json: {message: "success", data: @muvie, status_code: 200}
		end

		def update
				@muvie=Muvie.find_by_id(params[:id])
				@muvie.update_attributes(muvies_params)
				render json: {message: "success", data: @muvie, status_code: 200}
		end



		def muvies_params
			params.require(:muvie).permit(:title, :year, :rating, :language, :actor, :director, :producer)
			
		end
		end
	end
end 