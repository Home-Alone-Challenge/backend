class Challenge < ApplicationRecord
  validates :description, presence: true, length: { in: 10...300 }
  validates :title, presence: true
  validates :duration, presence: true
  validates :category, presence: true

  def self.set_daily
    if !Challenge.find_by(daily: true).nil?
      undaily_challenge = Challenge.find_by(daily: true)
      undaily_challenge.daily = false
      undaily_challenge.save
    end
    daily_challenge = Challenge.all.sample
    daily_challenge.daily = true
    daily_challenge.save
  end
end
