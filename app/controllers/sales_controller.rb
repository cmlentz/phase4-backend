class SalesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def create
    sale = Sale.create!(sale_params)
    render json: sale.animal, status: :created
  end

  private

  def sale_params
    params.permit(:shop_id, :animal_id)
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end