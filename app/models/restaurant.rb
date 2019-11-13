class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, :address, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
