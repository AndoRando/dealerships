require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#initialize') do
    it('initializes variables to hold class arguments') do
      test_vehicle = Vehicle.new("Nissan", "Versa", 2012)
      expect(test_vehicle.v_make()).to(eq("Nissan"))
      expect(test_vehicle.v_model()).to(eq("Versa"))
      expect(test_vehicle.v_year()).to(eq(2012))
    end
  end

  describe('.all') do
    it('starts out empty') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a vehicle to the array of saved vehicles') do
      test_vehicle = Vehicle.new("Hyundai", "Accent", 2009)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  # describe('.all') do
  #   it('displays all vehicle instances') do
  #     test_vehicle_one = Vehicle.new("Nissan", "Versa", 2012)
  #     test_vehicle_one.save()
  #     test_vehicle_two = Vehicle.new("Hyundai", "Accent", 2009)
  #     test_vehicle_two.save()
  #     expect(Vehicle.all()).to(eq([test_vehicle_one, test_vehicle_two]))
  #   end
  # end

  describe('#clear') do
    it('empties the Vehicle class array') do
      test_vehicle = Vehicle.new("Hyundai", "Accent", 2009)
      test_vehicle.save()
      expect(Vehicle.clear()).to(eq([]))
    end
  end
end
