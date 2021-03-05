class User::LearnsController < ApplicationController

  def index 
    if params[:language_id].present?
      @language = Language.find(params[:language_id])
      @learns = @language.learns
      @learn_time = []
    elsif params[:learn_id].present?
      @learn_time = LearnTime.find(params[:learn_id])
      @learn_time = @learn_time.created_at.strftime('%Y-%m-%d')
      @learns = current_user.learns
    else
      @learns = current_user.learns
      @learn_time = [] 
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
    redirect_to learns_path
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
    params.require(:learn).permit(:language_id, :title, :content)
  end
end
