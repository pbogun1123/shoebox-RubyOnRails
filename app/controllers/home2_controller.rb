class Home2Controller < ApplicationController

  skip_before_filter :authorize

  def conditions_of_use
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end

  def privacy_policy
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end

  def announcements
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end

  def support
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end

  def site_map
    @promotions = Promotion.where("startdate <= ? AND enddate >= ?", Date.today, Date.today)
  end
end
