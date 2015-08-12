require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#initialize') do
    it('initializes variables to hold class arguments') do
      brennwalds_car = Vehicle.new("Nissan", "Versa", 2012)
      expect(brennwalds_car.v_make()).to(eq("Nissan"))
      expect(brennwalds_car.v_model()).to(eq("Versa"))
      expect(brennwalds_car.v_year()).to(eq(2012))
    end
  end

  describe('.all') do
    it('starts out empty') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a vehicle to the array of saved vehicles') do
      austins_car = Vehicle.new("Hyundai", "Accent", 2009)
      austins_car.save()
      expect(Vehicle.all()).to(eq([austins_car]))
    end
  end

  describe('.all') do
    it('displays all vehicle instances') do
      brennwalds_car = Vehicle.new("Nissan", "Versa", 2012)
      brennwalds_car.save()
      austins_car = Vehicle.new("Hyundai", "Accent", 2009)
      austins_car.save()
      expect(Vehicle.all()).to(eq([brennwalds_car, austins_car]))
    end
  end

  describe('#clear') do
    it('empties the Vehicle class array') do
      austins_car = Vehicle.new("Hyundai", "Accent", 2009)
      austins_car.save()
      expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe('#age') do
    it('determins the age of a car in years') do
      brennwalds_car = Vehicle.new("Nissan", "Versa", 2012)
      expect(brennwalds_car.age()).to(eq(3))
    end
  end

  describe('#worth_buying?') do
    it('returns true if the car is of Asian origin and less than or equal to 15 years old') do
      austins_car = Vehicle.new("Hyundai", "Accent", 2009)
      expect(austins_car.worth_buying?()).to(eq(true))
    end
    it('returns false if the car is not of Asian origin and more than 15 years old') do
      crap_car = Vehicle.new("Ford", "Focus", 1988)
      expect(crap_car.worth_buying?()).to(eq(false))
    end
  end
end
