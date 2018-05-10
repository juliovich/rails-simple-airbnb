class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat =Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(fine_params)
    @flat.save
    redirect_to flats_path
  end

  private

  def fine_params
    params.require(:flat).permit(:name, :address, :description, :price_per_nigth, :number_of_guests)
  end
end
