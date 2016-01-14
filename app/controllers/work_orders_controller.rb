class WorkOrdersController < ApplicationController
  def index
    @workorders = Workorders.all
  end

  def show
  end

  def create
  end

  def destroy
  end

  def new
  end
end
