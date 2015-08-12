class Client < ActiveRecord::Base
  attr_accessible :C_Email, :C_FName, :C_LName, :C_Summary
  
  validates :C_Email, presence: true
  validates :C_FName, presence: true
  validates :C_LName, presence: true
  
  def name
    "#{FName}, #{LName}" #2
  end

  # One Client may have many videos/blogs
  # Delete dependent videos when deleting the developer
  has_many :c_video, :dependent => :destroy
  has_many :c_blog, :dependent => :destroy
  
end
