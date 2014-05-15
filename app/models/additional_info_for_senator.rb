class AdditionalInfoForSenator < ActiveRecord::Base

	belongs_to :senator

	def get_crp_id
		senators = Senator.all
		senators_crp_id = senators.crp_id

	end	
	end

end

