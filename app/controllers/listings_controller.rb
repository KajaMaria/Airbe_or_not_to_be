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
    start_date = params[:listing][:from_date]
    end_date = params[:listing][:to_date]

    p "unparsed start date is #{start_date}"
    p "unparsed end date is #{end_date}"

    parsed_start = Date.parse(start_date)
    parsed_end = Date.parse(end_date)

    p "parsed start date is #{parsed_start}"
    p "parsed end date is #{parsed_end}"

    @user = User.find(session[:user_id])
    @listing = @user.listings.create(listing_params)

      (parsed_start..parsed_end).each do |date|
      p @booking = @listing.bookings.create(date: date, availability: true)
    end

    redirect_to listings_index_path
  end



  def edit
  end

  private

  def listing_params

    params.require(:listing).permit(:title, :address_first_line, :address_second_line, :address_post_code, :address_city, :address_country, :description, :price)

  end
end
