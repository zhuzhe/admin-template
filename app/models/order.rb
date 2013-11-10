class Order < ActiveRecord::Base

  belongs_to :consumer
  belongs_to :activity
  belongs_to :ticket

  def ticket_uid
    ticket and ticket.uid or ''
  end

end
