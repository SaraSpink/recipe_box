class Ingredient < ActiveRecord::Base
  has_many :procedures
  has_many :recipes, through: :procedures
  has_many :measurements
end
