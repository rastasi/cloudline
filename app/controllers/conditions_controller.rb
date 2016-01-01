class ConditionsController < ApplicationController

  before_filter :load_site

  def index
    build_conditions
  end

  def show
    load_condition
  end

  private

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
