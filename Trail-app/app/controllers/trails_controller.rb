class TrailsController < ApplicationController
  def index
    @trails = Trail.get_trail_info
    @count = 0
  end

  def show
    @trail = Trail.get_trail_info["trails"][@count]
  end

  private

  # def trail_params
  #
  # end
end
