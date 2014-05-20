class CreateCapitolWordsForSenators < ActiveRecord::Migration
  def change
    create_table :capitol_words_for_senators do |t|
    	t.integer :count
    	t.string :term

    	t.references :senator, index: true

    end
  end
end
