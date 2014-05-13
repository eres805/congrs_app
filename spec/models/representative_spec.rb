require_relative '../spec_helper.rb'

describe Representative do 

	it { should belong_to :state }

	before :each do 
		@rep = Representative.create(title: "Rep", first_name: "Katherine", middle_name: "M", last_name: "Clark", name_suffix: nil, gender: "F", party: "D", facebook_id: "1408040802774787", twitter_id: "RepKClark", youtube_id: "Katherine", govtrack_id: "412600", crp_id: "N00035278", bioguide_id: "C001101", votesmart_id: 35858, office: "2108 Rayburn House Office Building", contact_form: nil, fax: nil, phone: "202-225-2836", term_start: "2013-12-12", term_end: "2015-01-03", birthday: "1963-07-17", district: 5, state_id: 21)
	end

	it "should have a title" do
		expect(@rep.title).to eq("Rep")
	end

	it "should have a first name" do
		expect(@rep.first_name).to eq("Katherine")
	end

	it "should have a middle name if available" do
		expect(@rep.middle_name).to eq("M")
	end

	it "should have a last name" do
		expect(@rep.last_name).to eq("Clark")
	end

	it "should have a name suffix if available" do
		expect(@rep.name_suffix).to eq(nil)
	end	

	it "should have a gender" do
		expect(@rep.gender).to eq("F")
	end	

	it "should have a party" do
		expect(@rep.party).to eq("D")
	end

	it "should have a facebook id" do
		expect(@rep.facebook_id).to eq("1408040802774787")
	end

	it "should have a twitter id" do
		expect(@rep.twitter_id).to eq("RepKClark")
	end	

	it "should have a youtube id" do
		expect(@rep.youtube_id).to eq("Katherine")
	end	

	it "should have a govtrack id" do
		expect(@rep.govtrack_id).to eq("412600")
	end

	it "should have a crp id" do
		expect(@rep.crp_id).to eq("N00035278")
	end

	it "should have a bioguide id" do
		expect(@rep.bioguide_id).to eq("C001101")
	end	

	it "should have a votesmart id" do
		expect(@rep.votesmart_id).to eq(35858)
	end

	it "should have a office" do
		expect(@rep.office).to eq("2108 Rayburn House Office Building")
	end

	it "should have a contact form" do
		expect(@rep.contact_form).to eq(nil)
	end	

	it "should have a fax number" do
		expect(@rep.fax).to eq(nil)
	end	

	it "should have a phone number" do
		expect(@rep.phone).to eq("202-225-2836")
	end	

	it "should have a term start date of" do
		expect(@rep.term_start).to eq("2013-12-12")
	end	

	it "should have a term end date of" do
		expect(@rep.term_end).to eq("2015-01-03")
	end	

	it "should have a birthday of" do
		expect(@rep.birthday).to eq("1963-07-17")
	end	

	it "should have a district" do
		expect(@rep.district).to eq(5)
	end	

	it "should have a state id" do
		expect(@rep.state_id).to eq(21)
	end	

end