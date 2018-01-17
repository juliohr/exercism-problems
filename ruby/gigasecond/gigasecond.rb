class Gigasecond
  def self.from(timeInUtc)
    Time.at(timeInUtc.tv_sec + 10E8)
  end
end

module BookKeeping
  VERSION = 6
end
