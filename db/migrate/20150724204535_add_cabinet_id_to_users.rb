class AddCabinetIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cabinet_id, :integer
  end
end
