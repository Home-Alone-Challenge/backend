class Challenge < ApplicationRecord
  validates :description, presence: { message: "must be given" }, length: { in: 6...300, message: 'Please enter between 3 and 300 signs' }
  validates :title, presence: { message: "must be given" }
  validates :duration, presence: { message: "must be given" }
  validates :category, presence: { message: "must be given" }

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
