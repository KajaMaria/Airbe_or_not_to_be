class RequestsController < ApplicationController

  def index
    @requests = Request.where(user_id: session[:user_id])



  end

  def requestsreceived

    @listings = Listing.where("user_id = #{session[:user_id]}")

    @requests_received = []
    @listings.each do |listing|
    @requests_received << Request.where("listing_id = #{listing.id}")
    end

    @requests_received = @requests_received.flatten


  end

  # def show
  #   @request = Request.find(params[:id])
  #
  # end

  def new
    @listing = Listing.find(session[:listing_id])
    @bookings = Booking.where("listing_id = #{@listing.id}")
    @user = User.find(session[:user_id])
    @request = Request.new

  end

  def create
    booking_id = params[:availability]


    booking = Booking.find(booking_id)




    @request = Request.create(user_id: session[:user_id],date: booking.date, message: "helloo", listing_id: session[:listing_id])

    session[:listing_id] = nil

    redirect_to '/requests/index'


    # @request = Request.create(request_params)
  end

  def update

    @request = Request.find(params[:id])
    @request.update(status: 'approved')

    @bookings = Booking.where(["date = :date and listing_id = :listing_id", { date: @request.date, listing_id: @request.listing_id}])


    @bookings.each do |booking|
      p "individual"
      p booking
    Booking.delete(booking.id)
    end

    redirect_to '/requests/index'

    #  we need to delete the dates that have been requested (once approved) from the bookings table as those dates should no lonher exist once theyve been booked.



  end

end
