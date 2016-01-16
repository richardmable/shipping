class ContainersController < ApplicationController
  def new
  end

  def index

  	@containers = Container.all
  end

  def create
  end

  def destroy
  end
end
