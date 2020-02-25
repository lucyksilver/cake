class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

  # validates :description, :item_id, :user_id, presence: true
  # validates :description, length: { minimum: 10 }
end
