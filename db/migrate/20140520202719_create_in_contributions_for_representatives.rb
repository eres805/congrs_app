class CreateInContributionsForRepresentatives < ActiveRecord::Migration
  def change
    create_table :in_contributions_for_representatives do |t|
    	t.string :industry_code
    	t.string :industry_name
    	t.integer :industry_money_individuals
    	t.integer :industry_money_pacs
    	t.string :industry_money_total
    	t.references :representative, index: true
    end
  end
end
