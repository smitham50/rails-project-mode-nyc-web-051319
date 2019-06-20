class TrailsController < ApplicationController
  before_action :authorized?, only: [:index, :show]

  def index
    if params[:search]
      @trails = Trail.all.select do |trail|
        trail.name.downcase.include?(params[:search].downcase)
      end
    else
      @trails = Trail.all
    end
  end

  def show
    @trail = Trail.find(params[:id])
    @review = Review.new
  end


  private

  def trail_params
    params.require(:trail).permit(:name, :trail_type, :summary, :difficulty, :stars, :starVotes, :location, :url, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate, :search)
  end

end
