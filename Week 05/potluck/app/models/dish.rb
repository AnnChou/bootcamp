class Dish < ActiveRecord::Base
  belongs_to :events
  belongs_to :user

  validates :name, presence: true
  validates_length_of :name, :minimum => 2
end
