namespace :senators do

	desc "fetch senators"
	
	task :fetch => :environment do
		
		results = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators?title=Sen&per_page=all&apikey=7ad1d136628443878ceb8655871a8799")
	  	@results = results.to_hash["results"]


	  	@results.each do |senator_data|
	  		Senator.create({
	  			title: senator_data["title"],
	  			first_name: senator_data["first_name"],
	  			middle_name: senator_data["middle_name"],
	  			last_name: senator_data["last_name"],
	  			name_suffix: senator_data["name_suffix"],
	  			gender: senator_data["gender"],
	  			party: senator_data["party"],

	  			facebook_id: senator_data["facebook_id"],
	  			twitter_id: senator_data["twitter_id"],
	  			youtube_id: senator_data["first_name"],

	  			govtrack_id: senator_data["govtrack_id"],
	  			crp_id: senator_data["crp_id"],
	  			bioguide_id: senator_data["bioguide_id"]
	  			votesmart_id: senator_data["votesmart_id"],

	  			office: senator_data["office"],
	  			contact_form: senator_data["contact_form"],
	  			fax: senator_data["fax"],
	  			phone: senator_data["phone"],

	  			term_start: senator_data["term_start"],
	  			term_end: senator_data["term_end"],
	  			birthday: senator_data["birthday"],

	  			senate_rank: senator_data["senate_rank"],
	  			senate_class: senator_data["senate_class"],
	  			state: senator_data["state"],
	  			})
	  	end
		
	end




end

