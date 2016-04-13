#Same thing, except that an owner can have multiple pets

class Owner < ActiveRecord::Base
  has_many :pets
end
