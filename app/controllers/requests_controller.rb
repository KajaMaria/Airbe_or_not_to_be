class RequestsController < ApplicationController

  def index
    @requests = Request.all

  end

  def show
    @request = Request.listings.find()
  end

  def new
  end
end
