namespace :organization_contributions_for_senators do

	desc "fetch organizations contributions for senator"
	
	task :fetch => :environment do

		@senators = Senator.all
		@senators_crp_id_array = []

		@senators.each do |sen_info|
			@senators_crp_id_array << sen_info["crp_id"]
		end

		@senators_crp_id_array.each do |sen|
	
  		open_secrets_org = HTTParty.get("http://www.opensecrets.org/api/?method=candContrib&cid=#{sen}&cycle=2014&apikey=eb0ce7bfff28f53b44c23d6b22027dce")

  		@open_secrets_org = open_secrets_org["response"]["contributors"]["contributor"]

	  		@open_secrets_org.each do |oso|
  		
  				senator_id = Senator.find_by(crp_id: sen)
	  			
	  			OrganizationContributionsForSenator.create({
	  				org_name: oso["org_name"],
	  				total: oso["total"],
	  				senator_id: senator_id.id
	  			})
	  		end
	  	end
  
  end

end
