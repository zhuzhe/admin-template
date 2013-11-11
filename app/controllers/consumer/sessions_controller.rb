class Consumer::SessionsController < Consumer::ApplicationController

  before_filter :authenticate_consumer!, only: [:destroy]

  def create
    @consumer = Consumer.find_by(phone: params[:user_name])
    if @consumer
      @consumer.session_token and @consumer.session_token.destroy
      if @consumer.password == params[:password]
        render json: {code: SUCCESS_CODE, token: SessionToken.create(consumer: @consumer).token}
      else
        render json: {code: FAILED_CODE, message: ["密码不正确"]}  
      end
    else  
      @consumer = Consumer.new(phone: params[:user_name], password: params[:password])
      if @consumer.save
        render json: {code: SUCCESS_CODE, token: SessionToken.create(consumer: @consumer).token}
      else
        render json: {code: FAILED_CODE, message: @consumer.errors}  
      end
    end
  end

  def destroy
    current_consumer and current_consumer.session_token and current_consumer.session_token.destroy
    render json: {code: SUCCESS_CODE}    
  end

end
