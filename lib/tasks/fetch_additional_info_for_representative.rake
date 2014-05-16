namespace :additional_info_for_representatives do

	desc "fetch addition representative info"
	
	task :fetch => :environment do

		@representatives = Representative.all
		@representatives_crp_id_array = []

		@representatives.each do |rep_info|
			@representatives_crp_id_array << rep_info["crp_id"]
		end

		@representatives_crp_id_array.each do |rep|
			if rep == "N00005918" 

			else
	
  		open_secrets_ind = HTTParty.get("http://www.opensecrets.org/api/?method=candIndustry&cid=#{rep}&cycle=2014&apikey=63d23c972e6f7113b53b00bb1e72ad39")

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
