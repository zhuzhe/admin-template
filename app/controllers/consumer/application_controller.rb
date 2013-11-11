class Consumer::ApplicationController < ActionController::Base




  def authenticate_consumer!
    st = SessionToken.find_by(token: params[:token])
    return render json: {code: FAILED_CODE, message: ["请重新登录"]} unless st
  end

  def current_consumer
    st = SessionToken.find_by(token: params[:token])
    st and st.consumer
  end

  def success
    render json: {code: SUCCESS_CODE}
  end

  def fail(errors)
    render json: {code: FAILED_CODE, message: errors}
  end

end
