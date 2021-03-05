class User::LanguagesController < ApplicationController
  def index
    @languages = current_user.languages
    @language = Language.new
  end

  def create
    @language = current_user.languages.build(language_params)
    @language.save
    redirect_to languages_path
  end

  def destroy
    @language = Language.find(params[:id])
    @language.destroy
    redirect_to languages_path
  end

  private
    def language_params
      params.require(:language).permit(:language)
    end
end
