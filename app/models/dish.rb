class Dish < ApplicationRecord
    belongs_to :cut, :optional => true
    has_and_belongs_to_many :wine, :optional =>true 
end
