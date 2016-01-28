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
    #validation to check that name is not blank and container limit is an integer
    if boat_params[:name] == ""
      flash[:alert] = "Fields cannot be blank, or your container limit is not a number"
      redirect_to new_boat_path
    else
      #create the boat with the supplied params. This needs to happen first so that
      # we know the ID of the boat that was just created to enter it into the join table
      @boat = Boat.create(boat_params)
      #if the boat is saved, display messages, redirect to the boats index
      if @boat.save
        #set the boat_owner to the current signed in port manager
        #this is inside the if statment so that an entry does not get made to the join table
        boat_owner = PortManager.find(@currentPortManager.id)
        #set the boat to the last created boat, which should be the boat that was just created
        #it should always be the last boat created in the database
        boat = Boat.last
        puts boat
        puts boat_owner
        #make the association through the join table connecting the boat with its owner
        boat_owner.boats.push(boat)
        #this step to put the id of the port manager in the join table
        boat_assign = PortManagerBoat.last
        boat_assign.update(port_manager_id: @currentPortManager.id)
        flash[:notice] = "The vessel was created successfully."
        redirect_to boats_path
      #if no boat was created
      else
        #if it wasn't saved, reload the boat create page
        flash[:alert] = "Something went wrong. Abandon ship!"
        redirect_to new_boat_path
      end
    end
  end

  def edit
    @boat = Boat.find_by_id(params[:id])
    @location = @boat.destination_port_manager_id
  end

  def update
    @boat = Boat.find_by_id(params[:id])
    @boat.update(info)
    if  @boat.save
      flash[:notice] = "Boat was updated"
      redirect_to edit_boat_path
    else
      flash[:alert] = "Something went wrong, boat was not updated."
      render :back
    end
  end

  def boat_follow
    @boats = Boat.all
  end

  def follow

  end

  def destroy
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :container_limit, :at_sea, :avatar)
  end

  def info
      params.require(:boat).permit(:destination_port_manager_id, :at_sea)
  end

end

  
