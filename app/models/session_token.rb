class SessionToken < ActiveRecord::Base

  belongs_to :consumer

  before_create do |st|
    st.token = SecureRandom.uuid
  end

end
