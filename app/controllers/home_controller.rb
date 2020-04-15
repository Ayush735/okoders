class HomeController < ApplicationController
  def index
    shows = []
    if params[:search].present?
      shows = TvShow.joins(:channel).where(['tv_shows.name ILIKE ? OR channels.name ILIKE ?', "%#{params[:search]}%","%#{params[:search]}%"])
    else
      shows = TvShow.all
    end
    @shows = shows  
  end
end