class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.string :user_id
      t.string :answer_id

      t.timestamps null: false
    end
  end
end
