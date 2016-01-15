class WorkOrdersController < ApplicationController
  def index
 
  end

  def show
  end

  def create
       @w = WorkOrder.create(wo_params)
#         (:name parms[p, :description, :salesman_id, container_attributes: [ :quantity, :cargo_type, :weight])
#  @S.save

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
# for x in 0...2
#     cargotype = container[0]
#     weight = container[1]
    
#       Container.create(cargotype, weight)
#    end

  

        puts "CREATING"
    # puts params
    # redirect_to salesmen_path
  end

  def destroy
  end

  def new
  end

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
