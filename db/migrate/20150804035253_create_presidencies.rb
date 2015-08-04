class CreatePresidencies < ActiveRecord::Migration
  def change
    create_table :presidencies do |t|
      t.integer :cabinet_id

      t.timestamps null: false
    end
  end
end
