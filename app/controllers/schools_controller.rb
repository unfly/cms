class SchoolsController < ApplicationController

  before_action :first_login
	
	before_action :find_id_school, only: [:edit, :update, :show, :destroy]

	def new
		@school = School.new
	end

	def create
		@school = School.new(school_params)
		if @school.save
			redirect_to schools_url
			flash[:success] = "创建成功！"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @school.update_attributes(school_params)
			redirect_to schools_url
			flash[:success] = "更新成功！"
		else
			render 'edit'
		end
	end

	def show
		
	end

	def index
		@schools = School.paginate(page:params[:page])
	end
	
	def destroy
		@school.destroy
		redirect_to schools_url
	end

	private

		def find_id_school
			@school = School.find(params[:id])
		end

		def school_params
			params.require(:school).permit(:name, :address, :contacts, :phone, :comment)
		end
end
