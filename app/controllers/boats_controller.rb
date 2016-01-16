class BoatsController < ApplicationController
# 	index - - list of boat names and locations
#   new - - list of boat sizes ability to name boat assign home port

  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def show
      @boat = Boat.where(id: params[:id])

  end

  def create
    #need logic for inserting boat owner with the boat

  end

  def destroy
  end
end
