class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :instructions, presence: true
  has_many :items, through: :measurements
  has_many :measurements, dependent: :destroy
end
