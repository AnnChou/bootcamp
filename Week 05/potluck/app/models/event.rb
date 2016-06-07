class Event < ActiveRecord::Base
  has_many :dishes, dependent: :destroy
end
