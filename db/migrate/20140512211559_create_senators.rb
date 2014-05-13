class CreateSenators < ActiveRecord::Migration
  def change
    create_table :senators do |t|

    	t.string :title
    	t.string :first_name
    	t.string :middle_name
    	t.string :last_name
    	t.string :name_suffix
    	t.string :gender
    	t.string :party

    	t.string :facebook_id
    	t.string :twitter_id
    	t.string :youtube_id

    	t.string :govtrack_id
    	t.string :crp_id
    	t.string :bioguide_id
    	t.integer :votesmart_id

    	t.string :office
    	t.string :contact_form
    	t.integer :fax
    	t.integer :phone

    	t.date :term_start
    	t.date :term_end
    	t.date :birthday

    	t.string :state_rank
    	t.string :senate_class
    	t.references :state, index: true

    end
  end
end
