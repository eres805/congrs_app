class CreateOrContributionsForRepresentatives < ActiveRecord::Migration
  def change
    create_table :or_contributions_for_representatives do |t|
    	t.string :org_name
    	t.integer :total
    	t.references :representative, index: true
    end
  end
end
