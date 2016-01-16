class WorkOrdersController < ApplicationController
  def index
 
  end

  def show
  end

  def create
    #check to see if the cargo description is at least 50 chars
    #uses a regexp where \. selects every character and .count then counts them
    if wo_params[:description].count "/\./" < 50 
      flash[:alert] = "The cargo description needs to be at least 50 characters"
      render "sales#index"
    else
      @w = WorkOrder.create(wo_params)
      puts "************************"
      puts c = wo_params[:containers_attributes]

      c.each do |f|
        puts f.inspect
        q =  f[1][:quantity]
          for i in 0...q.to_i
            puts "CONTAINER CREATING"
            @w.containers.push Container.create(cargo_type: f[1][:cargo_type], weight: f[1][:weight] )
          end
      end
      #redirect_to where?
    end
  end

  end

  def destroy
  end

  def new
  end

  private
   def wo_params
    params.require(:work_order).permit(:name, :description, :destination_port_manager_id, :origin_port_manager_id, :salesman_id, containers_attributes: [ :quantity, :cargo_type, :weight])
  end

  def container
    params.require(:work_order).permit(container: [])
  end

  def qty
    params.require(:work_order).permit(container_attributes: [ :quantity])
  end
end
