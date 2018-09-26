class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def drivers
    drivers = []
    Ride.all.each do |ride|
      if ride.passenger == name
        drivers << ride.driver
      end
      drivers.uniq!
    end
    return drivers
  end

  def total_distance
    total_distance = 0
    Ride.all.each do |ride|
      if ride.passenger == name
        total_distance += ride.distance
      end
    end
    total_distance
  end

  def self.all
    @@all
  end

  def self.premium_members
    premium_members = []
    self.all.each do |passenger|
      total_distance = 0
      Ride.all.each do |ride|
        if ride.passenger == passenger.name
          total_distance += ride.distance
        end
      end
      if total_distance > 100
        premium_members << passenger.name
      end
    end
    return premium_members
  end
end
