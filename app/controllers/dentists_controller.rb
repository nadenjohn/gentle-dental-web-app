class DentistsController < ApplicationController
  def index 
    render json: Dentist.all
  end 

  def show
    dentist = Dentist.find_by(params[:id])
    render json: dentist
  end 
end
