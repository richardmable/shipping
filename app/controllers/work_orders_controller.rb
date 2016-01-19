class WorkOrdersController < ApplicationController
  def index
    @WorkOrders = WorkOrder.all
  end

  def show
  @container = Container.where(work_order_id: params[:id])
  @workorder = WorkOrder.find_by_id(params[:id])

  end

  def create
    # check to see if the cargo description is at least 50 chars
    descriptionCount = wo_params[:description].length
    if  descriptionCount.to_i < 50 
      flash[:alert] = "The cargo description needs to be at least 50 characters"
      redirect_to :controller => 'salesmen', :action => 'index'
    else
      #set @c as to rotate through the container attributes later
      @c = wo_params[:containers_attributes]
      #set up and empty cost array
      @costArray = []
      @c.each do |f|
          q =  f[1][:quantity]
          #q is amount of each container created for the work order (i.e. 5 containers of apples)
          #multiply each container times $125
          cost = q * 125
          #push the cost of each set of containers into the cost array
          @costArray.push(cost)
        end
        #set shipmentCost to zero in case calculation fails, app won't crash
        @shipmentCost = 0
        #rotate through the cost array
        @costArray.each do |c|
          #add each part of array to the @shipmentCost
          @shipmentCost = @shipmentCost + c.to_i 
        end
        puts ""
        puts "SHIPMENT COST SHIPMENT COST SHIPMENT COST"
        puts @shipmentCost
      #check to see if the shipment cost is less than $1,000 
      if @shipmentCost < 1000
        flash[:alert] = "The Work Order needs to cost at least $1,000. Ship more stuff!"
        redirect_to :controller => 'salesmen', :action => 'index'
      else
        #set the cost params to the calculated shipping cost
        wo_params[:cost] = @shipmentCost
        @workorder = WorkOrder.create(wo_params)
        #loop through the attributes of the containers
        @c.each do |f|
          q =  f[1][:quantity]
            #for each container created, put in the cargo type and weight
            for i in 0..q.to_i
              @workorder.containers.push Container.create(cargo_type: f[1][:cargo_type], weight: f[1][:weight] )
            end
        end
      end
    end
    redirect_to work_orders_path
  end

  def destroy
  end

  def edit
    @container = Container.where(work_order_id: params[:id])
  @workorder = WorkOrder.find_by_id(params[:id])
  @qty = Container.where(work_order_id: params[:id]).count

  end


   def update
    if status[:complete] == "false"
    
    # find the work order
      wo = WorkOrder.find_by_id(params[:id])
      #update the work order with the params
      wo.update(wo_updates)
      #create the entry in the join table that assigns the work order to the boat
      bow = BoatWorkOrder.create(boat_id: WorkOrder.find(params[:id]).boat_id, work_order_id: params[:id])
      #flash message if they both work
      if wo.save && bow.save
        flash[:notice] = "Boat was assigned to work order"
      else
        flash[:alert] = "There was a problem assigning the boat to the work order"
      end
      
  end
  if wo_updates[:complete] == "true"
    # find the work order
      wo = WorkOrder.find_by_id(params[:id])
      #update the work order with the params
      wo.update(status)
      # destroy record in join table which is used to show if it is on the boat.
    BoatWorkOrder.where(work_order_id: params[:id]).destroy_all
  flash[:notice] = "Order is on the dock for customer pickup."
  end

    redirect_to work_orders_path

  end
#   def update
#     #find the work order
#     # if params[:complete] == false
#       puts params[:complete]

# #       wo = WorkOrder.find_by_id(params[:id])
# #       #update the work order with the params
# #       wo.update(wo_updates)
# #       #create the entry in the join table that assigns the work order to the boat
# #       bow = BoatWorkOrder.create(boat_id: WorkOrder.find(params[:id]).boat_id, work_order_id: params[:id])
# #       #flash message if they both work
# #       if wo.save && bow.save
# #         flash[:notice] = "Boat was assigned to work order"
# #       else
# #         flash[:alert] = "There was a problem assigning the boat to the work order"
# #       end
# #       redirect_to work_orders_path
# #     end

# #     if params[:complete] == true
# #       puts "*** *** *** ***"
# #       wo = WorkOrder.find_by_id(params[:id])
# #       #update the work order with the params
# #       wo.update(wo_updates)

# #       BoatWorkOrder.find(work_order_id: params[:id]).destroy.all
# #     end
# # redirect_to work_orders_path


#   end

  def new
  end


  private

  def wo_params
      params.require(:work_order).permit(:name, :cost, :description, :destination_port_manager_id, :origin_port_manager_id, :salesman_id, containers_attributes: [ :quantity, :cargo_type, :weight])
    end

  def wo_updates
      params.require(:work_order).permit(:boat_id, :complete, :destination_port_manager_id)
    end

  def boat
      params.require(:work_order).permit(:boat_id)
    end

  def status
      params.require(:work_order).permit(:complete)
  end

  def container
    params.require(:work_order).permit(container: [])
  end

  def qty
    params.require(:work_order).permit(container_attributes: [ :quantity])
  end
end


