class User::LearnsController < ApplicationController

  def index 
    if params[:language_id].present?
      @language = Language.find(params[:language_id])
      @learns = @language.learns
    else
      @learns = current_user.learns
    end
  end

  def show
    @learn = Learn.find(params[:id])
  end

  def new
    @learn = Learn.new
    @languages = current_user.languages
  end

  def create
    @learn = current_user.learns.build(learn_params)
    @learn.save
    redirect_to user_path(current_user)
  end

  def edit
    @learn = Learn.find(params[:id])
    @languages = current_user.languages
  end

  def update
    @learn = Learn.find(params[:id])
    @learn.update(learn_params)
    redirect_to learn_path(@learn)
  end

  def destroy
    @learn = Learn.find(params[:id])
    @learn.destroy
    redirect_to learns_path
  end

  private
  def learn_params
    current_time = Time.current
    params.require(:learn).permit(:learn_time, :language, :content, :site, :language_id).merge(:start_time => current_time)
  end
end
