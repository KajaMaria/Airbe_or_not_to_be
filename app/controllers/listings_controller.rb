class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
