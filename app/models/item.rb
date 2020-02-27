class Item < ApplicationRecord
  has_one_attached :photo
  has_many :orders
  belongs_to :user

  include PgSearch::Model
    pg_search_scope :search_by_flavour_by_occasion_and_by_portions,
      against: [ :flavour, :occasion, :portions ],
      using: {
        tsearch: { prefix: true }
    }

  FLAVOURS = ["Vanilla", "Chocolate", "Lemon", "Strawberry", "Fruit", "Coffee", "Walnut", "Carrot", "Red Velvet", " Other"]
  PORTIONS = ["1-5", "5-10", "10-15", "15+", "25+", "50+", "75+", "100+"]
  OCCASIONS = ["Wedding", "Birthday", "Christmas", "Anniversary", "Valentines", "Children’s Party", "Other"]

  $occasions = OCCASIONS
  $portions = PORTIONS
  $flavours = FLAVOURS

  validates :cost, presence: true, numericality: true
  validates :name, presence: true, length: { minimum: 4, maximum: 40 }
  validates :flavour, presence: true, inclusion: { in: FLAVOURS }
  validates :occasion, presence: true, inclusion: { in: OCCASIONS }
  validates :portions, presence: true, inclusion: { in: PORTIONS }
  validates :description, presence: true
end
