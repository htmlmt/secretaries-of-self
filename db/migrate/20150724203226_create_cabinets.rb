class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.timestamps null: false
    end
  end
end
