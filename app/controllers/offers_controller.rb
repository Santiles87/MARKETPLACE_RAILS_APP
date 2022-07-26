class OffersController < ApplicationController

  before_action :offer_params, only: %i[create]

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

    @offer.save
    redirect_to @offer
  end

  private

  def offer_params
    params.require([:offer].permit(:product_name, :price, :description, :image, :location))
  end
end
