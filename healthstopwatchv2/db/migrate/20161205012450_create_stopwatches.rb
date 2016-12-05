class CreateStopwatches < ActiveRecord::Migration
  def change
    create_table :stopwatches do |t|
      t.string :medicine
      t.integer :time

      t.timestamps null: false
    end
  end
end
