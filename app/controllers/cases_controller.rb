class CasesController < ApplicationController
  def index
  	@cases = Case.paginate(page: params[:page])
  end
end
