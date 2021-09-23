class ShopsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json: Shop.all
  end

  def show
    shop = find_shop
    render json: shop, serializer: ShopWithAnimalsSerializer
  end

  def create
    camper = Shop.create!(shop_params)
    render json: shop, status: :created
  end

  private

  def shop_params
    params.permit(:name, :city, :state)
  end
  
  def find_shop
    Shop.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Shop not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end