class Item < ApplicationRecord
  has_many :orders
  belongs_to :user

  FLAVOURS = %w(Lemon Drizzle, Red Velvet, Chocolate, Carrot, Sponge, Chiffon, Pineapple Upsidedown, Victoria Spong, Coffee and Walnut, Vanilla, Cheesecake, Fruit, Cinnamon, Marble, other)
  PORTIONS = %w(1 - 4, 5 - 8, 9 - 14, 15 - 24, 25 - 99, 100+)
  OCCASIONS = %w(Wedding Cake, Birthday Cake, Cupcakes, Christmas Cake, Anniversary Cake, Valentines Cake, Children’s Cake, Other)

  validates :cost, presence: true, numericality: true
  validates :flavour, presence: true, inclusion: { in: FLAVOURS }
  validates :portions, presence: true, inclusion: { in: PORTIONS }
  validates :occasion, presence: true, inclusion: { in: OCCASIONS }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
