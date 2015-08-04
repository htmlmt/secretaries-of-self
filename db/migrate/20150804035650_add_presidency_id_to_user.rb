class AddPresidencyIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :presidency_id, :integer
  end
end
