class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
