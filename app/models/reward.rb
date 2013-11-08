class Reward < ActiveRecord::Base

  has_attached_file :photo_url, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing_reward.png"
  validates_attachment :photo_url, content_type: { content_type: "image/jpg" }

  
end
