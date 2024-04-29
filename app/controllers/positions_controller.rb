class PositionsController < ApplicationController
  before_action :set_company, :set_i18n_careers, :set_i18n_contracts

  def index
    @positions = @company.positions.all
  end

  def new
    @position = @company.positions.new
    @carres = set_i18n_careers
  end

  def edit
  end

  def show
  end

  def create
  end

  def update
  end

  private

  def set_company
    redirect_to new_company_path if current_user.company.nil?
    @company = current_user.company
  end

  def set_i18n_careers
    @careers = I18n.t('activerecord.attributes.position.careers')
  end

  def set_i18n_contracts
    @contracts = I18n.t('activerecord.attributes.position.contracts')
  end
end
