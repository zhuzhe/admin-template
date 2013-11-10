class Consumer::TicketsController < Consumer::ApplicationController

  def exchange
    render json: {status: 'success'}
  end

end
