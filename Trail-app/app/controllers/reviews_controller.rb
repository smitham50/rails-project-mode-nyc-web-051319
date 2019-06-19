class ReviewsController < ApplicationController


  def create
    @review = Review.create(comment: params[:review][:comment], user_id: session[:user_id], trail_id: params[:review][:trail_id])
    redirect_to trail_path(params[:review][:trail_id])
  end

  def destroy

  end


end
