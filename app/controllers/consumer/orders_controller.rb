class Consumer::OrdersController < Consumer::ApplicationController

  before_filter :authenticate_consumer!

  def create
    render json: {status: 'success'}
  end

end
