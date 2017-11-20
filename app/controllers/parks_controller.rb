class ParksController < ApplicationController
  def index
    @parks = Park.includes(:states).all
  end

  def show
    @park = Park.includes(:states).find(params[:id])
  end
end
