class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = "Company successfully registered."
      redirect_to root_path
    else
      flash[:error] = "Error when registering company."
      render :new
    end
  end

  def update
  end

  private

  def company_params
    params.require(:company).permit(:name,:url)
  end
end
