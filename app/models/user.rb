class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :items # user items for sale
  has_many :items, through: :orders # ordered cakes by user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
