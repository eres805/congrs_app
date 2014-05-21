class Senator < ActiveRecord::Base

	belongs_to :state
	has_one :political_summary_for_senator
	has_many :industry_contributions_for_senators
	has_many :organization_contributions_for_senators
	has_many :capitol_words_for_senators

	def number_to_currency(number)
    	number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")
	end

end

