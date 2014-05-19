namespace :political_summary_for_senators do

	desc "fetch politcal summary for senator"
	
	task :fetch => :environment do

		@senators = Senator.all
		@senators_crp_id_array = []

		@senators.each do |sen_info|
			@senators_crp_id_array << sen_info["crp_id"]
		end

		@senators_crp_id_array.each do |sen|
	
  		open_secrets_sum = HTTParty.get("http://www.opensecrets.org/api/?method=candSummary&cid=#{sen}&cycle=2014&apikey=eb0ce7bfff28f53b44c23d6b22027dce")

  		@open_secrets_sum = open_secrets_sum.to_hash["response"]

	  		@open_secrets_sum.each do |oss|
  		
  				senator_id = Senator.find_by(crp_id: sen)
	  			
	  			PoliticalSummaryForSenator.create({
	  				first_elected: oss[1]["first_elected"],
	  				next_election: oss[1]["next_election"],
	  				money_spent: oss[1]["spent"],
	  				cash_on_hand: oss[1]["cash_on_hand"],
	  				debt: oss[1]["debt"],
	  				last_updated: oss[1]["last_updated"],
	  				senator_id: senator_id.id
	  				})

	  		end
	  	end
  
  end

end
