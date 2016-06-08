class Event < ActiveRecord::Base
  has_many :dishes, dependent: :destroy
  belongs_to :user
end
