class CategoryRecipe < ApplicationRecord
  belongs_to :user
  has_many :catefory_recipes

  
end
