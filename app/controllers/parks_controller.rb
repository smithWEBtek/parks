class ParksController < ApplicationController
  def index
    @parks = Park
      .paginate(page: params[:page])
      .includes(:states)
      .order(:full_name)
      .by_state(params[:state])
      .all

    @states = State.all.order(:abbreviation)
    @selected = params[:state]
  end

  def show
    @park = Park.includes(:states, :reviews).find(params[:id])
    @review = Review.new
  end
end
