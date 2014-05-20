namespace :additional_info_for_representatives do

	desc "fetch addition representative info"
	
	task :fetch => :environment do

		@representatives = Representative.where(id: 200..400)
		@representatives_crp_id_array = []

		@representatives.each do |rep_info|
			@representatives_crp_id_array << rep_info["crp_id"]
		end

		@representatives_crp_id_array.each do |rep|
			if rep == ("N00005918" || "N00030670") 

			else
	
  		open_secrets_ind = HTTParty.get("http://www.opensecrets.org/api/?method=candIndustry&cid=#{rep}&cycle=2014&apikey=eb0ce7bfff28f53b44c23d6b22027dce")

  		@open_secrets_ind = open_secrets_ind.to_hash["response"]["industries"]["industry"]

	  		@open_secrets_ind.each do |osi|
  		
  				representative_id = Representative.find_by(crp_id: rep)

	  				AdditionalInfoForRepresentative.create({
	  				industry_code: osi["industry_code"],
	  				industry_name: osi["industry_name"],
	  				industry_money_individuals: osi["indivs"],
	  				industry_money_pacs: osi["pacs"],
	  				industry_money_total: osi["total"],
	  				representative_id: representative_id.id
	  				})
	  		end
	  	end
  end
end
end
