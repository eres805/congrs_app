namespace :capitol_words_for_senators do

	desc "fetch capitol words for senator"
	
	task :fetch => :environment do

		@senators = Senator.all
		@senators_bioguide_id_array = []

		@senators.each do |sen_info|
			@senators_bioguide_id_array << sen_info["bioguide_id"]
		end

		@senators_bioguide_id_array.each do |sen|

		@capitol_words = HTTParty.get("http://capitolwords.org/api/1/phrases.json?entity_type=legislator&entity_value=#{sen}&apikey=7ad1d136628443878ceb8655871a8799")


	  		@capitol_words.each do |cw|
  		
  				senator_id = Senator.find_by(bioguide_id: sen)
	  			
	  			CapitolWordsForSenator.create({
	  				count: cw["count"],
	  				term: cw["ngram"],
	  				senator_id: senator_id.id
	  			})
	  		end
	  	end
  
  end

end

