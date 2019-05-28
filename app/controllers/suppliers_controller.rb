class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :update, :destroy]

  def searchSuppliers
    @suppliers = Supplier.findSuppliers(params[:Pais], params[:Ciudad], params[:Capacidad], params[:Servicios])
    render json: @suppliers
  end
  
  def get_excursions
    @excursions = Supplier.get_excursions(params[:id])
    render json: @excursions
  end 

  def get_account
    @account = Supplier.get_account(params[:id])
    render json: @account
  end  

  # GET /suppliers
  def index
    @suppliers = Supplier.all

    render json: @suppliers
  end

  # GET /suppliers/1
  def show
    render json: @supplier
  end

  # POST /suppliers
  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      render json: @supplier, status: :created, location: @supplier
    else
      render json: @supplier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /suppliers/1
  def update
    if @supplier.update(supplier_params)
      render json: @supplier
    else
      render json: @supplier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /suppliers/1
  def destroy
    @supplier.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def supplier_params
      params.require(:supplier).permit(:Codigo, :Nit, :Razon, :Social, :Telefono, :Correo, :Electronico, :Ubicacion, :Pais, :Ciudad, :Capacidad, :Servicios)
    end
end
