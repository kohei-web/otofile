class History < ApplicationRecord
  belongs_to :profile
  validates :year, numericality: { only_integer: true }, allow_blank: true, length: { is: 4 }
  validates :event, length: { maximum: 300 }
end
