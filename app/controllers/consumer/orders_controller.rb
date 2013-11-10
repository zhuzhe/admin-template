class Consumer::OrdersController < Consumer::ApplicationController

  def create
    render json: {status: 'success'}
  end

end
