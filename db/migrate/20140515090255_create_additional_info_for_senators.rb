class CreateAdditionalInfoForSenators < ActiveRecord::Migration
  def change
    create_table :additional_info_for_senators do |t|
			t.integer :first_elected
    	t.integer :next_election
    	t.integer :money_spent
    	t.integer :cash_on_hand
    	t.integer :debt
    	t.date :last_updated

    	t.string :org_name
    	t.integer :org_total_given

    	t.string :industry_code
    	t.string :industry_name
    	t.integer :industry_money_individuals
    	t.integer :industry_money_pacs
    	t.string :industry_money_total

    	t.references :senator, index: true
    end
  end
end
