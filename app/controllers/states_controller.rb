class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
    @state_district = @state.representatives.where(params[:district])
    @state_district_sort = @state_district.order(district: :asc)
      
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])
    @state.update(state_params)
    redirect_to state_path(@state)
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    redirect_to states_path
  end

  private
  def state_params
    params.require(:name).permit(:abbreviation, :population, :num_reps)
  end

end
