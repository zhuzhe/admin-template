class Activity < ActiveRecord::Base

  belongs_to :user
  has_many :rewards

  def date_range_str
    if self.start_time and self.end_time
      "#{self.start_time} - #{self.end_time}"
    else
      ""  
    end
  end

end
