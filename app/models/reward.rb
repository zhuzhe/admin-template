class Reward < ActiveRecord::Base

  belongs_to :activity
  belongs_to :bussiness
  has_attached_file :photo_url, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/missing_reward.jpg"
  validates_attachment :photo_url, content_type: { content_type: "image/jpg" }

  def left_amount 
    0
  end

  def info
    {
      id: id, name: name, desc: desc  
    }
  end
  
end
