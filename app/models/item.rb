class Item < ApplicationRecord
  has_one_attached :photo
  has_many :orders
  belongs_to :user

  FLAVOURS = ["Lemon Drizzle Cake", "Red Velvet Cake", "Chocolate Cake", "Carrot Cake", "Sponge Cake", "Chiffon Cake", "Pineapple Upsidedown Cake", "Victoria Sponge Cake", "Coffee and Walnut Cake", "Vanilla Cake", "Cheesecake Cake", "Fruit Cake", "Cinnamon Cake", "Marble Cake", "other"]
  PORTIONS = ["1 - 4", "5 - 8", "9 - 14", "15 - 24", "25 - 99", "100+"]
  OCCASIONS = ["Wedding", "Birthday", "Cupcakes", "Christmas", "Anniversary", "Valentine's Day", "Children's Party", "Other"]

  $occasions = OCCASIONS
  $portions = PORTIONS

  validates :cost, presence: true, numericality: true
  validates :flavour, presence: true, length: { minimum: 4, maximum: 40 }
  validates :portions, presence: true, inclusion: { in: PORTIONS }
  validates :occasion, presence: true, inclusion: { in: OCCASIONS }
  validates :flavour, presence: true, inclusion: { in: FLAVOURS }
  validates :description, presence: true
  validates :name, presence: true
end
