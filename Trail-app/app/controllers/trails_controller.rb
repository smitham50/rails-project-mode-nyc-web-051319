class TrailsController < ApplicationController
  before_action :authorized?, only: [:index, :show]


  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find(params[:id])
  end



  private

  def trail_params
    params.require(:trail).permit(:name, :trail_type, :summary, :difficulty, :stars, :starVotes, :location, :url, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate)
  end

end
