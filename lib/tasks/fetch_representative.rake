namespace :representatives do

	desc "fetch representatives"
	
	task :fetch => :environment do
		
		results = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators?title=Rep&per_page=all&apikey=7ad1d136628443878ceb8655871a8799")
	  	@results = results.to_hash["results"]

	  	# puts @results[0]
	  	@results.each do |representative_data|
	  		Representative.create({
	  			first_name: representative_data["first_name"],
	  			middle_name: representative_data["middle_name"],
	  			last_name: representative_data["last_name"],
	  			party: representative_data["party"],
	  			state: representative_data["state"],
	  			bioguide_id: representative_data["bioguide_id"]
	  			})

	  	end
		
	end




end

