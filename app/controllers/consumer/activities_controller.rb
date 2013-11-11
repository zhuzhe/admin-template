class Consumer::ActivitiesController < Consumer::ApplicationController

  before_filter :authenticate_consumer!

  def index
    @activities = Activity.effective
    render json: {activities: @activities.map {|a| a.info } }
  end

end
