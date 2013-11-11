class RewardsController < ApplicationController
  before_action :set_reward, only: [:show, :edit, :update, :destroy]
  before_action :find_activity, only: [:index, :new]
  # GET /rewards
  # GET /rewards.json
  def index
    @rewards = @activity.rewards
  end

  # GET /rewards/1
  # GET /rewards/1.json
  def show
    @activity = @reward.activity
  end

  # GET /rewards/new
  def new
    @reward = Reward.new
  end

  # GET /rewards/1/edit
  def edit
    @activity = @reward.activity
  end

  # POST /rewards
  # POST /rewards.json
  def create
    @activity = Activity.find(params[:reward][:activity_id])
    @reward = Reward.new(reward_params)
    respond_to do |format|
      if @reward.save
        format.html { redirect_to @reward, notice: 'Reward was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reward }
      else
        format.html { render action: 'new' }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rewards/1
  # PATCH/PUT /rewards/1.json
  def update
    respond_to do |format|
      if @reward.update(reward_params)
        format.html { redirect_to @reward, notice: 'Reward was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rewards/1
  # DELETE /rewards/1.json
  def destroy
    @activity = @reward.activity
    @reward.destroy
    respond_to do |format|
      format.html { redirect_to activity_rewards_path(@activity) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @reward = Reward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reward_params
      params.require(:reward).permit(:activity_id, :name, :desc, :photo, 
        :amount, :photo_url, :bussiness_id, :rate, :used_time, :is_used)
    end

    def find_activity
      @activity = Activity.find(params[:activity_id])
    end

end
