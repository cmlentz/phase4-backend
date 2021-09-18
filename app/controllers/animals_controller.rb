  
class AnimalsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    render json: Animal.all
  end

  def destroy
    animal = find_animal
    animal.destroy
    head :no_content
  end

  private

  def find_animal
    Animal.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Animal not found" }, status: :not_found
  end

end