# require 'pry'
# binding.pry

namespace :representatives do

	desc "fetch representative"
	
	task :fetch => :environment do
		
		results = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators?title=Rep&per_page=all&apikey=7ad1d136628443878ceb8655871a8799")
	  	@results = results.to_hash["results"]


	  	@results.each do |representative_data|
	  		state_abbr = representative_data["state"]
	  		state = State.find_by(abbreviation: state_abbr)
	  		Representative.create({
	  			title: representative_data["title"],
	  			first_name: representative_data["first_name"],
	  			middle_name: representative_data["middle_name"],
	  			last_name: representative_data["last_name"],
	  			name_suffix: representative_data["name_suffix"],
	  			gender: representative_data["gender"],
	  			party: representative_data["party"],

	  			facebook_id: representative_data["facebook_id"],
	  			twitter_id: representative_data["twitter_id"],
	  			youtube_id: representative_data["first_name"],

	  			govtrack_id: representative_data["govtrack_id"],
	  			crp_id: representative_data["crp_id"],
	  			bioguide_id: representative_data["bioguide_id"],
	  			votesmart_id: representative_data["votesmart_id"],

	  			office: representative_data["office"],
	  			contact_form: representative_data["contact_form"],
	  			fax: representative_data["fax"],
	  			phone: representative_data["phone"],

	  			term_start: representative_data["term_start"],
	  			term_end: representative_data["term_end"],
	  			birthday: representative_data["birthday"],

	  			district: representative_data["district"],
	  			state_id: state.id
	  			})
		end
		
	end

end

