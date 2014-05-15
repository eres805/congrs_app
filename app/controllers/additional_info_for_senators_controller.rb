class AdditionalInfoForSenatorsController < ApplicationController

	def create
    	@additional_info_for_senator = AdditionalInfoForSenator.create()
  	end

end


  private
  # def additional_info_for_senator_params
  #   params.require(:senator_id).permit()
  # end