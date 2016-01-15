class SalesmenController < ApplicationController
  def index
  	@workorder = WorkOrder.new
  	# @container = Container.new
  	@workorder.containers.build
  end

  def create

  end

  def show
  end

  def destroy
  end
end
