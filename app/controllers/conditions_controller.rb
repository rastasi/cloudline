class ConditionsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :load_site
  before_filter :load_condition, except: [:index, :new, :create]

  def index
    build_conditions
  end

  def show
  end

  def new
  end

  def create
    condition = Condition.new(permitted_params)
    condition.site = @site
    condition.save
    if condition
      redirect_to site_path(@site)
    else
      redirect_to new_site_condition(@site)
    end
  end

  def edit
  end

  def update
    if @condition.update_attributes(permitted_params)
      redirect_to site_path(@site)
    else
      redirect_to site_condition_path(@site, @condition)
    end
  end

  def destroy
    @condition.destroy
    redirect_to site_path(@site)
  end

  private

  def permitted_params
    params.require(:condition).permit(:ctype, :value, :site_id)
  end

  def load_site
    @site = Site.find(params[:site_id])
  end

  def build_conditions
    @conditions = @site.conditions
  end

  def load_condition
    @condition = Condition.find(params[:id])
  end

end
