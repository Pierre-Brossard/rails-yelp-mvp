class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :category
  validates_inclusion_of :category, in: CATEGORY
end
