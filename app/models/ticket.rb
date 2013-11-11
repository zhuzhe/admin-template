class Ticket < ActiveRecord::Base

  belongs_to :activity
  belongs_to :reward
  belongs_to :consumer

  before_create do |ticket|
    ticket.uid = SecureRandom.uuid
  end

  def info
    {
      id: id, award: reward.info, coupon: uid, used_time: used_time  
    }
    
  end

end
