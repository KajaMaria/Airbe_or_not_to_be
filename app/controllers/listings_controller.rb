class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    listing = Listing.new
    @listing = listing.create(params[:title], params[:address_city], params[:address_post_code], params[:address_city], params[:address_country], params[:address_first_line], params[:address_second_line], params[:description], params[:price])
  end

  def edit
  end
end
