class Representative < ActiveRecord::Base

	belongs_to :state
	has_many :capitol_words_for_representatives
	has_many :in_contributions_for_representatives
	has_many :or_contributions_for_representatives

end

