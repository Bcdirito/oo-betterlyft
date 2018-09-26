class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def passenger_names
    passenger_names = []
    Ride.all.each do |ride|
      if ride.driver == name
        passenger_names << ride.passenger
      end
      passenger_names.uniq!
    end
    return passenger_names
  end

  def rides
    rides = []
    rides << Ride.all.each do |ride|
      ride.driver == name
    end
    return rides
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    mileage = []
    Ride.all.each do |ride|
      if ride.distance > distance
        mileage << ride.driver
      end
    end
    mileage.uniq!
    return mileage
  end
end
