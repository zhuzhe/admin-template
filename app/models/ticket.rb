class Ticket < ActiveRecord::Base

  belongs_to :activity
  belongs_to :reward

  before_create do |ticket|
    ticket.uid = SecureRandom.uuid
  end

end
