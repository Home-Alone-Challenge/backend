class Challenge < ApplicationRecord
  validates :description, presence: true, length: { in: 10...300 }
  validates :title, presence: true
  validates :duration, presence: true
  validates :category, presence: true
end
