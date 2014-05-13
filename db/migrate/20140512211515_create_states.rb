class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    	t.string :name
    	t.string :abbreviation
    	t.integer :population
    	t.integer :num_reps
    end
  end
end
