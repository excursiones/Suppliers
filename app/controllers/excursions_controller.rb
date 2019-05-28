class ExcursionsController < ApplicationController
  before_action :set_excursion, only: [:show, :update, :destroy]

  # GET /excursions
  def index
    @excursions = Excursion.all

    render json: @excursions
  end

  # GET /excursions/1
  def show
    render json: @excursion
  end

  # POST /excursions
  def create
    @excursion = Excursion.new(excursion_params)

    if @excursion.save
      render json: @excursion, status: :created, location: @excursion
    else
      render json: @excursion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /excursions/1
  def update
    if @excursion.update(excursion_params)
      render json: @excursion
    else
      render json: @excursion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /excursions/1
  def destroy
    @excursion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excursion
      @excursion = Excursion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def excursion_params
      params.require(:excursion).permit(:Codigo, :Tarifa, :Capacidad, :Servicios_Incluidos, :Pais, :Ciudad, :supplier_id)
    end
end
