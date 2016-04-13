#We need to modify our Pet model and add this belongs_to symbol
#Every pet needs an owner, so that is why we declare this relationship here

class Pet < ActiveRecord::Base
  belongs_to :owner
end
