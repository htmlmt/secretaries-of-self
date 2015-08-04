class CreateRolesJoinTable < ActiveRecord::Migration
  def change
    create_table :roles, :id => false do |t|
      t.column :user_id, :integer
      t.column :cabinet_id, :integer
      t.column :role, :string
    end
  end
end
