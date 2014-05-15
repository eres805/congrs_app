namespace :additional_info_for_senators do

	desc "fetch senator"
	
	task :fetch => :environment do

	senator = Senator.all
	@reps_crp_id = senator.crp_id
	
	state = State.find_by(abbreviation: state_abbr)

  	open_secrets_ind = HTTParty.get("http://www.opensecrets.org/api/?method=candIndustry&cid="+member["crp_id"]+"&cycle=2014&apikey=63d23c972e6f7113b53b00bb1e72ad39")
  		
  	@open_secrets_ind = open_secrets_ind.to_hash["response"]["industries"]["industry"]

  
  end

end