class ListingsController < ApplicationController
  def index
    @listing = Listing.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
