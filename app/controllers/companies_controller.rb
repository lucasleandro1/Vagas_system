class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = current_user.build_company(company_params)
    if @company.save
      flash[:notice] = "Company successfully registered."
      redirect_to root_path # Use redirect_to para redirecionar para a rota raiz
    else
      flash[:error] = "Error when registering company."
      render :new
    end
  end


  def update
  end

  private

  def company_params
    params.require(:company).permit(:name, :url, :logo)
  end
end
