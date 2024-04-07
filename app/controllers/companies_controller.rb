class CompaniesController < ApplicationController
  def new
    @companies = current_user.build_company.new
  end

  def edit
  end

  def create
  end

  def update
  end
end
