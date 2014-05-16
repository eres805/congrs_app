class Senator < ActiveRecord::Base

	belongs_to :state
	has_many :additional_info_for_senators


	def number_to_currency(number)
    	number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")
	end

end

