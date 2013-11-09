class Reward < ActiveRecord::Base

  belongs_to :activity

  has_attached_file :photo_url, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/missing_reward.jpg"
  validates_attachment :photo_url, content_type: { content_type: "image/jpg" }

  
end
