class ServicesController < ApplicationController
  before_action :set_services, only: %i[show edit update destroy]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(services_params)
    @service.save
    if @service.save
      redirect_to service_path(@service)
    else
      render 'new', status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    @service = Service.new(services_params)
    @service.save
    if @service.save
      redirect_to service_path(@service)
    else
      render 'edit', status: unprocessable_entity
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path, status: :see_other
  end

  private

  def set_services
    @services = Service.find(params[:id])
  end

  def services_params
    params.require(:service).permit(:name, :photo, :type, :address, :price_per_day, :description, :photo)
  end
end
