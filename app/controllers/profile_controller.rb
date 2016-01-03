class ProfileController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id]) unless params[:id] == 'sign_out'
  end
end
