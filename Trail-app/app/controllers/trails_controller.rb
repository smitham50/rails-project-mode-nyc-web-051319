class TrailsController < ApplicationController
  def index
    @trails = Trail.get_trail_info
  end
end
