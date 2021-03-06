class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, length: {minimum: 2}
  validates_presence_of :password, length: (6..20)
  validates_uniqueness_of :email

  def full_name
    "#{first_name} #{last_name}"
  end
end
