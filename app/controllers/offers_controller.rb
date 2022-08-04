class OffersController < ApplicationController

  before_action :offer_params, only: %i[create]
  before_action :offers_id, only: %i[show edit destroy]

  def index
    if params[:query].present?
      @offers = Offer.where("product_name ILIKE ?", "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
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

  def update
    @offer.update(offer_params)
    redirect_to @offer_path
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:product_name, :price, :description, :image, :location)
  end

  def offers_id
    @offer = Offer.find(params[:id])
  end
end
