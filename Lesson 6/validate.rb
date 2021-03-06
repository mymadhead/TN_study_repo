# Validation module
module Validate
  NUMBER_FORMAT = /^[a-z0-9] {3}-? [a-z0-9]{2}$/i

  def valid?
    validate!
    true
  rescue
    false
  end

  def validate_number!
    raise 'Number cannot be empty! It must contains numbers!' if number.empty? && number.length < 5
  end

  def validate_type!
    raise 'Type cannot be empty. It must contains characters!' if type.empty?
  end

  def validate_name!
    raise 'Name cannot be empty. It must contains letters!' if name.empty?
  end

  def validate_route!
    raise 'Route cannot be empty. It must contains two stations at least!' if route.empty?
  end

  def validate_format!
    raise 'Character format is incorrect! Try again!' if number !~ NUMBER_FORMAT
  end

  def validate_speed!
    raise 'Speed must be at 0 to 190 km/h!' unless (0..190).include?(speed)
  end

  def validate_wagon_type!(wagon)
    raise 'Wagon type is incorrect! Take another wagon type or train!' unless wagon.type == self.type
  end
end
