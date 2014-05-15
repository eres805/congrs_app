require_relative '../spec_helper.rb'

describe Senator do 

	it { should belong_to :state }

	before :each do 
		@sen = Senator.create(title: "Sen", first_name: "Deb", middle_name: nil, last_name: "Fischer", name_suffix: nil, gender: "F", party: "R", facebook_id: "531623656856934", twitter_id: "SenatorFischer", youtube_id: "Deb", govtrack_id: "412556", crp_id: "N00033443", bioguide_id: "F000463", votesmart_id: 41963, office: "383 Russell Senate Office Building", contact_form: "http://www.fischer.senate.gov/public/index.cfm/contact", fax: "202-228-1325", phone: "202-224-6551", term_start: "2013-01-03", term_end: "2019-01-03", birthday: "1951-03-01", state_rank: "junior", senate_class: "1", state_id: 27)
	end


	it "should have a title" do
		expect(@sen.title).to eq("Sen")
	end

	it "should have a first name" do
		expect(@sen.first_name).to eq("Deb")
	end

	it "should have a middle name if available" do
		expect(@sen.middle_name).to eq(nil)
	end

	it "should have a last name" do
		expect(@sen.last_name).to eq("Fischer")
	end

	it "should have a name suffix if available" do
		expect(@sen.name_suffix).to eq(nil)
	end	

	it "should have a gender" do
		expect(@sen.gender).to eq("F")
	end	

	it "should have a party" do
		expect(@sen.party).to eq("R")
	end

	it "should have a facebook id" do
		expect(@sen.facebook_id).to eq("531623656856934")
	end

	it "should have a twitter id" do
		expect(@sen.twitter_id).to eq("SenatorFischer")
	end	

	it "should have a youtube id" do
		expect(@sen.youtube_id).to eq("Deb")
	end	

	it "should have a govtrack id" do
		expect(@sen.govtrack_id).to eq("412556")
	end

	it "should have a crp id" do
		expect(@sen.crp_id).to eq("N00033443")
	end

	it "should have a bioguide id" do
		expect(@sen.bioguide_id).to eq("F000463")
	end	

	it "should have a votesmart id" do
		expect(@sen.votesmart_id).to eq(41963)
	end

	it "should have a office" do
		expect(@sen.office).to eq("383 Russell Senate Office Building")
	end

	it "should have a contact form" do
		expect(@sen.contact_form).to eq("http://www.fischer.senate.gov/public/index.cfm/contact")
	end	

	it "should have a fax number" do
		expect(@sen.fax).to eq("202-228-1325")
	end	

	it "should have a phone number" do
		expect(@sen.phone).to eq("202-224-6551")
	end	

	it "should have a term start date of" do
		expect(@sen.term_start.strftime("%Y-%m-%d")).to eq("2013-01-03")
	end	

	it "should have a term end date of" do
		expect(@sen.term_end.strftime("%Y-%m-%d")).to eq("2019-01-03")
	end	

	it "should have a birthday of" do
		expect(@sen.birthday.strftime("%Y-%m-%d")).to eq("1951-03-01")
	end	

	it "should have a state rank" do
		expect(@sen.state_rank).to eq("junior")
	end	

	it "should have a senate class" do
		expect(@sen.senate_class).to eq("1")
	end	

	it "should have a state id" do
		expect(@sen.state_id).to eq(27)
	end	

end