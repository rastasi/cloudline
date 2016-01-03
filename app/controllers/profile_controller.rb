class ProfileController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_profile_owner

  def show
    @user = User.find(params[:id]) unless params[:id] == 'sign_out'
  end

  private

  def check_profile_owner
    redirect_403 unless params[:id].to_i == current_user.id
  end

end
