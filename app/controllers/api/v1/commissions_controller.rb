class Api::V1::CommissionsController < Api::V1::BaseController
  before_action :find_commissions, only: %i[index create]
  before_action :find_commission, only: %i[update show destroy]

  def index
    response_success commissions: @commissions.map(&:api_params)
  end

  def show
    response_success commission: @commission.api_params
  end

  def create
    commission = @commissions.build(commission_params)
    if commission.save
      response_created commission: commission.api_params
    else
      response_error message: commission.errors.full_messages
    end
  end

  def update
    @commission.update(commission_params)
    response_success commission: @commission.api_params
  end

  def destroy
    @commission.destroy
    response_success
  end

  private

  def commission_params
    params.require(:commission)
          .permit(
            :id,
            :payment_form,
            :commission_amount,
            :commission_type,
            :event_id
          )
  end

  def find_commissions
    @commissions = Commission.all
  end

  def find_commission
    @commission = Commission.find(params[:id])
  end
end
