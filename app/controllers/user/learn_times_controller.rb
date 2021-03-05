class User::LearnTimesController < ApplicationController
  def create
    @learn_time = current_user.learn_times.build(learn_time_params)
    @learn_time.save
    redirect_to user_path(current_user)
  end

  def destroy
    @learn_time = LearnTime.find(params[:id])
    @learn_time.destroy
    redirect_to user_path(current_user)
  end

  private
    def learn_time_params
      current_time = Time.current
      params.require(:learn_time).permit(:language, :learn_time).merge(:start_time => current_time)
    end
end
