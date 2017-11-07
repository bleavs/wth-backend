class Run < ApplicationRecord

  has_many :userruns
  has_many :users, through: :userruns

end
