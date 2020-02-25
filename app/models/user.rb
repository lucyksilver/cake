class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders, dependent: :destroy
  has_many :items, dependent: :destroy # user items for sale
  has_many :items, through: :orders # ordered cakes by user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
