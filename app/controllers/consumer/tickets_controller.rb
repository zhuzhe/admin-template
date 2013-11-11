class Consumer::TicketsController < Consumer::ApplicationController

  before_filter :authenticate_consumer!

  def index
    render json: {code: SUCCESS_CODE, tickets: current_consumer.tickets.map {|t| t.info}}
  end

  def exchange
    render json: {status: 'success'}
  end

  def lottery
    @activity = Activity.find(params[:activity_id])
    @ticket = @activity.lottery(current_consumer)
    render json: {code: SUCCESS_CODE, ticket: @ticket.info}
  end

end
