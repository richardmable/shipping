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
      @boat = Boat.find(params[:id])
      @workorder = BoatWorkOrder.where(boat_id: params[:id])
      @container = Container.where(boat_id: params[:id])

  end

  def create
    #need logic for inserting boat owner with the boat

  end

  def destroy
  end
end
