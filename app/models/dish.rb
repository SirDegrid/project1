class Dish < ApplicationRecord
    has_and_belongs_to_many :wines, :optional => true
    belongs_to :cut, :optional => true
end
