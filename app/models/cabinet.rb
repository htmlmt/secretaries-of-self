class Cabinet < ActiveRecord::Base
  has_many :users
  has_one :presidency
end
