class ReviewsController < ApplicationController
  def create
    park = Park.find(params[:park_id])
    park.reviews.create(review_params)

    @review = Review.new
    redirect_to park_path(park)
  end

  def edit
    @park = Park.find(params[:park_id])
    @review = Review.find(params[:id])
  end

  def update
    park = Park.find(params[:park_id])
    Review.find(params[:id]).update(review_params)

    @review = Review.new
    redirect_to park_path(park)
  end

  private
  def review_params
    params.require(:review).permit(:name, :review)
  end
end
