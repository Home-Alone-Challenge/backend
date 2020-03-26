class Dailytip < ApplicationRecord
  def self.set_daily
    if !Dailytip.find_by(daily: true).nil?
      undaily_dailytip = Dailytip.find_by(daily: true)
      undaily_dailytip.daily = false
      undaily_dailytip.save
    end
    daily_dailytip = Dailytip.all.sample
    daily_dailytip.daily = true
    daily_dailytip.save
  end
end
