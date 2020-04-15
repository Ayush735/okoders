class TvShowController < ApplicationController
  before_action :set_tv_show
  before_action :authenticate_user!
  
  def make_favourite
    current_user.added_as_favourite(@tv_show)
    redirect_to root_path, notice: "Added #{@tv_show.name} successfully as your favourite show"
  end

  def make_unfavourite
    current_user.removed_from_favourite(@tv_show)
    redirect_to root_path, notice: "Removed #{@tv_show.name} successfully from your favourite show list ..!"
  end

  private
  def set_tv_show
    @tv_show = TvShow.find params[:id]
  end
end  