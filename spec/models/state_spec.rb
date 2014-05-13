require_relative '../spec_helper.rb'

describe State do 

	it { have_many :representatives }
  	it { have_many :senators }

	before :each do 
		@md = State.create(name: "Maryland", abbreviation: 'MD', population: 5789929, num_reps: 8)
	end

	it "should have the full state name" do
		expect(@md.name).to eq("Maryland")
	end

	it "should have the abbreviated state name" do
		expect(@md.abbreviation).to eq("MD")
	end

	it "should have a population" do
		expect(@md.population).to eq(5789929)
	end	

	it "should tell the number of representatives for the state" do
		expect(@md.num_reps).to eq(8)
	end	


end