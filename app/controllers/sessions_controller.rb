class SessionsController < ApplicationController
	
	def create
		user = Employee.find_by(name: params[:session][:name])
		if user && user.authenticate(params[:session][:password])
			flash[:success] = "log in success!"
			log_in user	
			redirect_to root_url
		else
			flash[:danger] = "log in error!"	
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end

end
