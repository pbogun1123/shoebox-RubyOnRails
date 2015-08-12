class HomeController < ApplicationController
	skip_before_filter :authorize

  def index
	@time = Time.now
	@promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end

  def about
	@time = Time.now
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end

  def contact
    @time = Time.now
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end
end
