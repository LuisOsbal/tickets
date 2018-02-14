class Api::V1::UsersController < Api::V1::BaseController
  before_action :find_users, only: %i[index create]
  before_action :find_user, only: %i[update show destroy]

  def index
    response_success users: @users.map(&:api_params)
  end

  def show
    response_success user: @user.api_params
  end

  def create
    user = @users.build(user_params)
    if user.save
      response_created user: user.api_params
    else
      response_error message: user.errors.full_messages
    end
  end

  def update
    @user.update(user_params)
    response_success user: @user.api_params
  end

  def destroy
    @user.destroy
    response_success
  end

  private

  def user_params
    params.require(:user)
          .permit(
            :nickname,
            :email
          )
  end

  def find_users
    @users = User.all
  end

  def find_user
    @user = User.find(params[:id])
  end
end
