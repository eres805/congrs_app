class CreatePoliticalSummaryForSenators < ActiveRecord::Migration
  def change
    create_table :political_summary_for_senators do |t|
    	t.integer :first_elected
    	t.integer :next_election
    	t.integer :money_spent
    	t.integer :cash_on_hand
    	t.integer :debt
    	t.string :last_updated
    	t.references :senator, index: true
    end
  end
end
