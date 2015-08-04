class User < ActiveRecord::Base
  has_many :cabinets, through: :roles
  has_many :roles
  has_many :questions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def password_required?
    new_record? ? false : super
  end

  def email_required?
    true
  end
end
