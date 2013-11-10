class Consumer::SessionsController < Consumer::ApplicationController

  def create
    render json: {status: 'success'}
  end

  def destroy
    render json: {status: 'success'}
  end

end
