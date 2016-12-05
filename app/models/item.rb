class Item < ApplicationRecord
  validates :name, presence: true
  has_many :recipes, through: :measurements
  has_many :measurements, dependent: :destroy
end
