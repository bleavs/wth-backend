class User < ApplicationRecord
  has_secure_password

  has_many :userruns
  has_many :runs, through: :userruns

end
