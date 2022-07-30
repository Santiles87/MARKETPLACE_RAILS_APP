class OffersController < ApplicationController

  before_action :offer_params, only: %i[create]
  before_action :offers_id, only: %i[show edit destroy]

  def index
    @offers = Offer.all
  end

  def show; end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

   if @offer.save
    redirect_to @offer
   else
    render :new
   end
  end

  def edit; end

  def destroy
    @offer.destroy
    redirect_to lists_path
  end
  private

  def offer_params
    params.require(:offer).permit(:product_name, :price, :description, :image, :location)
  end

  def offers_id
    @offer = Offer.find(params[:id])
  end
end
