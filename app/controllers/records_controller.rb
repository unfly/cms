class RecordsController < ApplicationController

		before_action :find_id_record, only: [:edit, :update, :show, :destroy]

	def new
		@record = Record.new
	end

	def create
		
		@record = Record.new(record_params)
		if @record.save
			redirect_to records_url
			flash[:success] = "创建成功！"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @record.update_attributes(record_params)
			redirect_to records_url
			flash[:success] = "更新成功！"
		else
			render 'edit'
		end
	end

	def show
		
	end

	def index
		@records = Record.paginate(page:params[:page])
	end
	
	def destroy
		@record.destroy
		redirect_to records_url
	end

	private

		def find_id_record
			@record = Record.find(params[:id])
		end

		def record_params
			params.require(:record).permit(:description, :status, :case_id)
		end
end
