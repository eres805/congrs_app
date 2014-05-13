class RepresentativesController < ApplicationController

  def index
    @representatives = Representative.all
  end

  def show
    @representative = Representative.find(params[:id])
  end

  def new
    @representative = Representative.new
  end

  def create
    @representative = Representative.new(representative_params)
  end

  def edit
    @representative = Representative.find(params[:id])
  end

  def update
    @representative = Representative.find(params[:id])
    @representative.update(representative_params)
    redirect_to representative_path(@representative)
  end

  def destroy
    @representative = Representative.find(params[:id])
    @representative.destroy
    redirect_to states_path
  end

  private
  def representative_params
    params.require(:name).permit(:abbreviation, :population, :representatives)
  end

end
