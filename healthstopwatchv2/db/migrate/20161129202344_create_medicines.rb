class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :Name
      t.integer :time

      t.timestamps null: false
    end
  end
end
