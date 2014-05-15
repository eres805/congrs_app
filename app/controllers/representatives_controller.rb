class RepresentativesController < ApplicationController
 
  before_filter :determine_scope, :only => :index 
  before_filter :current_state, :only => :index

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
