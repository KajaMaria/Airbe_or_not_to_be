class RequestsController < ApplicationController

  def index
    @requests = Request.where(user_id: session[:user_id])

  end

  def show
    @request = Request.find(params[:id])

  end

  def new
  end
end
