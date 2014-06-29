module SessionsHelper

	def log_in(user)
		session[:user_id]= user.id
	end

	def log_in?
		!session[:user_id].blank?
	end

	def log_out
		session[:user_id] = nil
	end

	def current_user
		Employee.find(session[:user_id])
	end


end
