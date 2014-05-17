require_relative '../spec_helper.rb'

describe AdditionalInfoForSenator do 

	it { should belong_to :senator }

	before :each do 
		@sen_info = AdditionalInfoForSenator.create(first_elected: 2008, next_election: 2014, money_spent: 1000000, cash_on_hand: 250000, debt: 0, last_updated: "2014-05-01", org_name: "Comcast", org_total_given: 50000, industry_code: "1a", industry_name: "Telecommunications", industry_money_individuals: 25000, industry_money_pacs: 25000, industry_money_total: 50000, senator_id: 10)
	end

	it "should have a first_elected year" do
		expect(@sen_info.first_elected).to eq(2008)
	end

	it "should have a next election year" do
		expect(@sen_info.next_election).to eq(2014)
	end

	it "should have the money spent in the election" do
		expect(@sen_info.money_spent).to eq(1000000)
	end

	it "should have cash on hand" do
		expect(@sen_info.cash_on_hand).to eq(250000)
	end

	it "should have cash on hand" do
		expect(@sen_info.debt).to eq(0)
	end

	it "should have the date last updated" do
		expect(@sen_info.last_updated.strftime("%Y-%m-%d")).to eq("2014-05-01")
	end

	it "should have an organization name" do
		expect(@sen_info.org_name).to eq("Comcast")
	end

	it "should have the amount the organization has given" do
		expect(@sen_info.org_total_given).to eq(50000)
	end

	it "should have the industry code" do
		expect(@sen_info.industry_code).to eq("1a")
	end

	it "should have the industry name" do
		expect(@sen_info.industry_name).to eq("Telecommunications")
	end

	it "should have the contributions from an individual in the industry" do
		expect(@sen_info.industry_money_individuals).to eq(25000)
	end

	it "should have the contributions from SuperPacs in the industry" do
		expect(@sen_info.industry_money_pacs).to eq(25000)
	end

	it "should have the total contributions from the industry" do
		expect(@sen_info.industry_money_total).to eq(50000)
	end

	it "should be related to a Senator and have their id" do
		expect(@sen_info.senator_id).to eq(10)
	end


end