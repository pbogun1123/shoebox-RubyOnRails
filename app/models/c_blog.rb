class CBlog < ActiveRecord::Base
  attr_accessible :client_id, :content, :title
  
  validates :content, presence: true
  validates :title, presence: true
   
  # Each blog belongs to only 1 client
  belongs_to :client
  
end
