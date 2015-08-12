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
end
