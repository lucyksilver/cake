class Item < ApplicationRecord
  has_many :orders
  belongs_to :user

  PORTIONS = ["1 - 4", "5 - 8", "9 - 14", "15 - 24", "25 - 99", "100"]
  OCCASIONS = ["Wedding Cake", "Birthday Cake", "Cupcakes", "Christmas Cake", "Anniversary Cake", "Valentines Cake", "Children’s Cake", "Other"]

  validates :cost, presence: true, numericality: true
  validates :flavour, presence: true, length: { minimum: 4, maximum: 40 }
  validates :portions, presence: true, inclusion: { in: PORTIONS }
  validates :occasion, presence: true, inclusion: { in: OCCASIONS }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
