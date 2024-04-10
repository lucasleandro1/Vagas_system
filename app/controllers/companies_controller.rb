class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def new
    @company = current_user.build_company
  end

  def edit
    @company = current_user.company
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
    @company = current_user.company
    if @company.update(company_params)
      flash[:notice] = 'Empresa atualizada com sucesso.'
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def company_params
    params.require(:company).permit(:id, :name, :url, :logo)
  end
end
