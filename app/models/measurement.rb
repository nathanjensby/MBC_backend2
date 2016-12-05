class Measurement < ApplicationRecord

  validates :amount, presence: true

  belongs_to :recipe
  belongs_to :item
end
