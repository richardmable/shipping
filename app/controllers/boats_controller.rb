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
    #assign instance vars to various activerecord finder methods for certain attributes
    @boats = Boat.all
    @boat = Boat.find(params[:id])
    @workorder = BoatWorkOrder.where(boat_id: params[:id])
    @container = Container.where(boat_id: params[:id])

  end

  def create
    #create the boat with the supplied params. This needs to happen first so that
    # we know the ID of the boat that was just created to enter it into the join table
    @boat = Boat.create(boat_params)
    #set the PMID params of the join table to the current port manager
    boat_owner_params[:port_manager_id] = @currentPortManager.id
    #set the BID to the ID of the newly created both
    #it should always be the last boat created in the database
    boat_owner_params[:boat_id] = Boat.last.id
    #create the entry in the join table for assigning the boat to an owner
    PortManagerBoat.create(boat_owner_params)
      #if the boat is saved, display messages, redirect to the boats index
      if @boat.save
        flash[:notice] = "The vessel was created successfully."
        redirect_to boats_path
      else
        #if it wasn't save, reload the boat create page
        flash[:alert] = "Something went wrong. Abandon ship!"
        redirect_to new_boat_path
      end
  end

  def edit
    @boat = Boat.find_by_id(params[:id])
    @location = @boat.destination_port_manager_id
  end

  def update
    boat = Boat.find_by_id(params[:id])
    boat.update(info)
    boat.save

  end

  def boat_follow
    @boats = Boat.all
  end

  def follow

  end

  def destroy
  end

  private

  def boat_owner_params
    params.require.permit(:portmanagerboat).permit(:port_manager_id, :boat_id)
  end

  def boat_params
    params.require(:boat).permit(:name, :container_limit, :at_sea, :avatar)
  end

  def info
      params.require(:boat).permit(:destination_port_manager_id, :at_sea)
  end

end

  
