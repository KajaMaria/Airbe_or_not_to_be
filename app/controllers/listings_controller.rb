class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @user = User.find(session[:user_id])
    @listing = @user.listings.create(listing_params)
    redirect_to listings_index_path
  end



  def edit
  end

  private

  def listing_params

    params.require(:listing).permit(:title, :address_first_line, :address_second_line, :address_post_code, :address_city, :address_country, :description, :price)

  end
end
