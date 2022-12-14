# Класс Station
class Station
  attr_reader :name, :trains
  attr_accessor :train_type

  def initialize(name)
    @name = name
    @trains = []
    @train_type = {passenger: [], cargo: []}
  end

  def add_train(type)
    if type == :passenger
      @train_type[:passenger] << type
    elsif
      @train_type[:cargo] << type
    else
      @trains << type
    end
  end

  def train_types(type)
    @trains.each { |train| train.type == type }.size
  end

end


#Класс Train (Поезд):
class Train
  attr_reader :number, :type, :wagons
  attr_accessor :current_speed
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @current_speed = 0
  end

  def speed(speed)
    @current_speed = speed
  end

  def stop
    self.current_speed = 0
  end

  def add_wagon()
    if @current_speed == 0
      @wagons += 1
    else
      puts 'Stop the train and try again!'
    end
  end

  def remove_wagon
    if @current_speed == 0
      @wagons -= 1
    else
      puts 'Stop the train and try again!'
    end
  end

  def gets_route(route)
    self.route = route
    self.route.stations[0].add_train(self)
    @current_stations = 0
  end
  def move_forward
    @current_stations += 1
  end
  def move_back
    @current_stations -= 1
  end
end


#Класс Route
class Route
  attr_accessor :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_stations(station)
    @stations.delete(station)
  end

  def full_route
    @stations.each { |title| puts title }
  end

end


# station = Station.new('ABC')
# train = Train.new(195, 'pass', 10)
# route = Route.new('MSK', 'SPB')
