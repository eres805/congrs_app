class CreateIndustryContributionsForSenators < ActiveRecord::Migration
  def change
    create_table :industry_contributions_for_senators do |t|
    	t.string :industry_code
    	t.string :industry_name
    	t.integer :industry_money_individuals
    	t.integer :industry_money_pacs
    	t.string :industry_money_total
    	t.references :senator, index: true
    end
  end
end
