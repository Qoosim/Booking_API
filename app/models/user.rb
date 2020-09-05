class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :bikes, through: :appointments #foreign_key: :bike_id
  has_many :bikes
  
  validates_presence_of :name, :email, :password_digest

  has_secure_password

  def to_admin
    update(admin: true)
  end
end