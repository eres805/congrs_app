namespace :additional_info_for_senators do

	desc "fetch addition senator info"
	
	task :fetch => :environment do

		@senators = Senator.all
		@senators_crp_id_array = []
		# @senator_id_array = []

		@senators.each do |sen_info|
			@senators_crp_id_array << sen_info["crp_id"]
			# @senator_id_array << sen_info["id"]
		end

		@senators_crp_id_array.each do |sen|

			# @sen_crp_id = @senators["crp_id"]
			# @sen_id = @senators["id"]
	
  		open_secrets_ind = HTTParty.get("http://www.opensecrets.org/api/?method=candIndustry&cid=#{sen}&cycle=2014&apikey=63d23c972e6f7113b53b00bb1e72ad39")

  		
  		@open_secrets_ind = open_secrets_ind.to_hash["response"]["industries"]["industry"]

	  		@open_secrets_ind.each do |osi|
  		
  		senator_id = Senator.find_by(crp_id: sen)
	  			AdditionalInfoForSenator.create({
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
