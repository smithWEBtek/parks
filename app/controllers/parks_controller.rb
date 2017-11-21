class ParksController < ApplicationController
  def index
    @parks = Park.includes(:states).all
  end

  def show
    @park = Park.includes(:states, :reviews).find(params[:id])
    @review = Review.new
  end
end
