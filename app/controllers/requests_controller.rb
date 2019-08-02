class RequestsController < ApplicationController

  def index
    @requests = Request.where(user_id: session[:user_id])
  end

  def show
    @request = Request.find(params[:id])

  end

  def new
    @listing = Listing.find(session[:listing_id])
    @bookings = Booking.where("listing_id = #{@listing.id}")
    @user = User.find(session[:user_id])
    @request = Request.new

  end

  def create
    booking_id = params[:availability]
    p "!!!!!!!!!!!!!!!!!!!! #{booking_id}"

    booking = Booking.find(booking_id)

    p booking.date



    @request = Request.create(user_id:session[:user_id],date: booking.date, message: "helloo", listing_id: booking.listing_id)

    session[:listing_id] = nil

    redirect_to '/requests/index'


    # @request = Request.create(request_params)
  end

  def update



  end

end
