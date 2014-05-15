class RepresentativesController < ApplicationController
 
  before_filter :determine_scope, :only => :index 
  before_filter :current_state, :only => :index
  # before_filter :rep_state, :only => :show

  def index
    @representatives = @scope.all
    @state = @state_name
  end

  def show
    @representative = Representative.find(params[:id])
    # @state = @state_name
    
      respond_to do |format|
      format.html { }
      format.json { render json: {msg: params[:data]} }
      end
  end

  private

    # def rep_state
    #   @representative_state_id = @representative.state_id
    #   @rep_state = State.where(state_id: @representative_state_id)
    #   @state_name = @rep_state.name
    # end

    def current_state
      @current_state = State.find(params[:state_id])
      @state_name = @current_state.name
    end

    def determine_scope
      @scope = if params[:state_id]
      State.find(params[:state_id]).representatives
    end
    
  end

end
