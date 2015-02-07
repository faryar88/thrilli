class AdventuresController < ApplicationController
  def index
    @adventures = Adventure.all
  end

  def new
    @adventure = Adventure.new 
  end

  def create
    adventure = Adventure.create(adventure_params)
    redirect_to(adventure)
  end

  def show
    @adventure = Adventure.find params[:id]
  end

  def edit
    @adventure = Adventure.find params[:id]
  end

  def update
    adventure = Adventure.find params[:id]
    adventure.update(adventure_params)
    redirect_to(adventure)
  end

  def destroy
    adventure = Adventure.find params[:id]
    adventure.destroy
    redirect_to(adventures_path)
  end

  private 

  def adventure_params
    params.require(:adventure).permit(:offer_type, :adventure_type, :image, :pickup_location, :activity_location, :availibility, :description, :seats, :difficulty, :gender_preference, :sponsor_company, :extras, :age_limit, :duration, :overnight, :title)
  end 
end