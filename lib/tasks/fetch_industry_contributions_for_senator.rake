namespace :industry_contributions_for_senators do

	desc "fetch industry contributions for senator"
	
	task :fetch => :environment do

		@senators = Senator.all
		@senators_crp_id_array = []

		@senators.each do |sen_info|
			@senators_crp_id_array << sen_info["crp_id"]
		end

		@senators_crp_id_array.each do |sen|
	
  		open_secrets_ind = HTTParty.get("http://www.opensecrets.org/api/?method=candIndustry&cid=#{sen}&cycle=2014&apikey=eb0ce7bfff28f53b44c23d6b22027dce")

  		@open_secrets_ind = open_secrets_ind.to_hash["response"]["industries"]["industry"]

	  		@open_secrets_ind.each do |osi|
  		
  				senator_id = Senator.find_by(crp_id: sen)
	  			
	  			IndustryContributionsForSenator.create({
	  				industry_code: osi["industry_code"],
	  				industry_name: osi["industry_name"],
	  				industry_money_individuals: osi["indivs"],
	  				industry_money_pacs: osi["pacs"],
	  				industry_money_total: osi["total"],
	  				senator_id: senator_id.id
	  				})

	  		end
	  	end
  
  end

end
