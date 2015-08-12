class Promotion < ActiveRecord::Base
  attr_accessible :description, :enddate, :imagepath, :startdate, :title
end
