class CasesController < ApplicationController
  
  def index
  	@cases = Case.paginate(page: params[:page])
  end

  def new
  	@case = Case.new
  end

  def create
  	@case = Case.new(case_params)
  	if @case.save
  		redirect_to cases_url
  		flash[:success] = "添加客户成功！"
  	else
  		render 'new'
  	end
  end

  def edit
  	@case = Case.find(params[:id])
  end

  def update
  	@case = Case.find(params[:id])
  	if @case.update_attributes(case_params)
  		redirect_to cases_url
  		flash[:success] = "客户资料更新成功！"
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@case = Case.find(params[:id])
  	@case.destroy
  	redirect_to cases_url
  end

  private

  	def case_params
  		params.require(:case).permit(:name, :phone, :address, :work, :relation, :cname, :ename, :gender, :birthday, :school_id, :employee_id, :record_id, :source_id, :status, :comment)
  	end
end
