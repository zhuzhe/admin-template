class Consumer < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/missing_avatar.jpg"

  validates :phone, presence: true, length: { is: 11 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }

  has_one :session_token
  has_many :tickets

  def buy_lottery_count
    self.lottery_count += 1
    self.save
  end

end
