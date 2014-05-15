class Senator < ActiveRecord::Base

	belongs_to :state
	has_many :additional_info_for_senators


end

