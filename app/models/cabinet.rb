class Cabinet < ActiveRecord::Base
  has_many :users, through: :roles
  has_many :roles
end
