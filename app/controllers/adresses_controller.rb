class AdressesController < ApplicationController
  before_action :set_adress, only: %i[ show update destroy ]

  # GET /adresses
  def index
    @adresses = Adresse.all

    render json: @adresses
  end

  # GET /adresses/1
  def show
    render json: @adress
  end

  # POST /adresses
  def create
    @adress = Adresse.new(adress_params)

    if @adress.save
      render json: @adress, status: :created, location: @adress
    else
      render json: @adress.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adresses/1
  def update
    if @adress.update(adress_params)
      render json: @adress
    else
      render json: @adress.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adresses/1
  def destroy
    @adress.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      @adress = Adresse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adress_params
      params.require(:adress).permit(:adress, :city, :zipcode, :user_id)
    end
end
