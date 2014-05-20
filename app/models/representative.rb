class Representative < ActiveRecord::Base

	belongs_to :state
	has_many :additional_info_for_representatives
	has_many :capitol_words_for_representatives
	has_many :in_contributions_for_representatives

end

