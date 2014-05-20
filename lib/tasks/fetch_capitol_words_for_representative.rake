namespace :capitol_words_for_representatives do

	desc "fetch capitol words for representative"
	
	task :fetch => :environment do

		@representatives = Representative.all
		@representatives_bioguide_id_array = []

		@representatives.each do |rep_info|
			@representatives_bioguide_id_array << rep_info["bioguide_id"]
		end

		@representatives_bioguide_id_array.each do |rep|

		@capitol_words = HTTParty.get("http://capitolwords.org/api/1/phrases.json?entity_type=legislator&entity_value=#{rep}&apikey=7ad1d136628443878ceb8655871a8799")


	  		@capitol_words.each do |cw|
  		
  				representative_id = Representative.find_by(bioguide_id: rep)
	  			
	  			CapitolWordsForRepresentative.create({
	  				count: cw["count"],
	  				term: cw["ngram"],
	  				representative_id: representative_id.id
	  			})
	  		end
	  	end
  
  end

end

