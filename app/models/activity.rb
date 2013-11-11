class Activity < ActiveRecord::Base

  belongs_to :user
  has_many :rewards

  has_many :orders

  NET = 1

  CALLS = 2

  SMS = 3

  CONSUME = [
    {id: NET, name: '网络流量'},
    {id: CALLS, name: '话费'},
    {id: SMS, name: '短信'}
  ]

  def date_range_str
    if self.start_time and self.end_time
      "#{self.start_time} - #{self.end_time}"
    else
      ""  
    end
  end

  def author_name
    self.user.name || "匿名"
  end

  def count_net 
    orders.where(consume_type: NET).count(:consume_amount)
  end

  def count_calls
    orders.where(consume_type: CALLS).count(:consume_amount)
  end

  def count_sms
    orders.where(consume_type: SMS).count(:consume_amount)
  end

  def info
    {id: id, name: name, description: content, awards: rewards.map {|r| r.photo_url.url} }
  end

  def lottery(consumer)

    award = rewards.map do |reward|
      p reward.rate
      if random_event_100(reward.rate)
        p "get rewards"
        reward
      else
        p "no rewards"
        nil  
      end
    end.compact().first()


    transaction() {  

      if award
        ticket = Ticket.create!(consumer: consumer, activity: self, reward: award)  
      else
        ticket = nil        
      end
      
      consumer.lottery_count -= 1
      consumer.save!

      Order.create!(consumer: consumer, activity: self, ticket: ticket)
      return ticket
    }
  end

  def random_event_100(rate)
    if rand(100) <= rate
      true
    else
      false 
    end  
  end     

  class << self
    
    def effective
      where("end_time > ? and start_time < ? ", Date.today, Date.today)
    end

  end

end
