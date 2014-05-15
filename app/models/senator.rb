class Senator < ActiveRecord::Base

	belongs_to :state
	has_one :additional_info_for_senator


end

