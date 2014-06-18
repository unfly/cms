class SourcesController < ApplicationController
		before_action :find_id_source, only: [:edit, :update, :show, :destroy]

	def new
		@source = Source.new
	end

	def create
		@source = Source.new(source_params)
		if @source.save
			redirect_to sources_url
			flash[:success] = "创建成功！"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @source.update_attributes(source_params)
			redirect_to sources_url
			flash[:success] = "更新成功！"
		else
			render 'edit'
		end
	end

	def show
		
	end

	def index
		@sources = Source.paginate(page:params[:page])
	end
	
	def destroy
		@source.destroy
		redirect_to sources_url
	end

	private

		def find_id_source
			@source = Source.find(params[:id])
		end

		def source_params
			params.require(:source).permit(:content)
		end
end
