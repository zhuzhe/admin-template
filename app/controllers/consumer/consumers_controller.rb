class Consumer::ConsumersController < Consumer::ApplicationController

  before_filter :authenticate_consumer!

  def update
    @consumer = current_consumer
    if @consumer.update(password: params[:password])
      success
    else
      fail(@consumer.errors)  
    end  
  end

  def buy_lottery_count
   if current_consumer.buy_lottery_count
      lottery_count
    else
      fail  
    end  
  end

  def lottery_count
    render json: {code: SUCCESS_CODE, count: current_consumer.lottery_count}
  end

  private

  def consumer_params
    params.require(:consumer).permit(:phone, :name)
  end

end
