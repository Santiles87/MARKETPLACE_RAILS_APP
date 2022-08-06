class OffersController < ApplicationController
  before_action :offer_params, only: %i[create update]
  before_action :offers_id, only: %i[show edit update destroy]

  def index
    @offers = policy_scope(Offer).order(created_at: :desc)
    if params[:query].present?
      @offers = @offers.where("product_name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params.merge(user: current_user))
    authorize @offer

    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  def edit
    authorize @offer
  end

  def update
    @offer.update(offer_params)
    authorize @offer
    redirect_to @offer
  end

  def destroy
    @offer.destroy
    authorize @offer
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
