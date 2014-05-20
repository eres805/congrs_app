class CreateCapitolWordsForRepresentatives < ActiveRecord::Migration
  def change
    create_table :capitol_words_for_representatives do |t|
    	t.integer :count
    	t.string :term

    	t.references :representative, index: true

    end
  end
end
