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
    @position = @company.positions.new(params_position)
  end

  def update
  end

  private

  def params_position
    params.require(:position).permit(:name, :career, :contract, :remote, :publish, :city, :state, :summary, :description)
  end

  def set_company
    redirect_to new_company_path if current_user.company.nil?
    @company = current_user.company
  end

  def set_i18n_careers
    @careers = []
    Position.careers.each_with_index do |career, index|
    @careers << [
      Position.careers.to_a[index].first,
      I18n.t('activerecord.attributes.position.careers').values.to_a[index]
    ]
    end
  end

  def set_i18n_contracts
    @contracts = []
    Position.contracts.each_with_index do |career, index|
    @contracts << [
      Position.contracts.to_a[index].first,
      I18n.t('activerecord.attributes.position.contracts').values.to_a[index]
    ]
    end
  end
end
