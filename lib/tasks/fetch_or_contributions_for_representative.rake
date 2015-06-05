namespace :or_contributions_for_representatives do

	desc "fetch organizations contributions for representative"
	
	task :fetch => :environment do


		@representatives = Representative.all
		@representatives_crp_id_array = []

		@representatives.each do |rep_info|
			@representatives_crp_id_array << rep_info["crp_id"]
		end

		@representatives_crp_id_array.each do |rep|
			if rep == ""

			else
	
  		open_secrets_org = HTTParty.get("http://www.opensecrets.org/api/?method=candContrib&cid=#{rep}&cycle=2014&apikey=faecf82ba08569e62cfb16980b71a667")

  		@open_secrets_org = open_secrets_org["response"]["contributors"]["contributor"]

	  		@open_secrets_org.each do |oso|
  		
  				representative_id = Representative.find_by(crp_id: rep)
	  			
	  			OrContributionsForRepresentative.create({
	  				org_name: oso["org_name"],
	  				total: oso["total"],
	  				representative_id: representative_id.id
	  				})

	  		end
	  	end
  
  end

end

end