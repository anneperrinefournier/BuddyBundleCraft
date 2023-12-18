class ServicesController < ApplicationController
  before_action :set_service, only: %i[show edit update destroy]

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
    if @service.save
      redirect_to service_path(@service), notice: 'Service créé avec succès.'
    else
      render 'new', status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @service.update(services_params)
      redirect_to service_path(@service), notice: 'Service mis à jour avec succès.'
    else
      render 'edit', status: unprocessable_entity
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path, status: :see_other, notice: 'Service supprimé avec succès.'
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def services_params
    params.require(:service).permit(:name, :photo, :service_type, :address, :price_per_day, :description)
  end
end
