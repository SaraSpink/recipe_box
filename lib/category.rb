class Category < ActiveRecord::Base
  has_many :tags
  has_many :recipes, through: :tags
end
