class Ingredient < ActiveRecord::Base
    has_and_belongs_to_many :recipes
    scope :by_name, -> {order(:name)}
end