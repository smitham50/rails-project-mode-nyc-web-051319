class ReviewsController < ApplicationController


  def create
    @review = Review.create(comment: params[:review][:comment], user_id: session[:user_id], trail_id: params[:review][:trail_id])
    redirect_to trail_path(params[:review][:trail_id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(session[:user_id])
  end


end
