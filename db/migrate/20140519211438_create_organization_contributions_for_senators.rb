class CreateOrganizationContributionsForSenators < ActiveRecord::Migration
  def change
    create_table :organization_contributions_for_senators do |t|
    	t.string :org_name
    	t.integer :total
    	t.references :senator, index: true
    end
  end
end
