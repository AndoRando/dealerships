require('rspec')
require('dealership')

describe(Vehicle) do
  describe('#initialize') do
    it('initializes variables to hold class arguments') do
      test_vehicle = Vehicle.new("Nissan", "Versa", 2012)
      expect(test_vehicle.v_make()).to(eq("Nissan"))
      expect(test_vehicle.v_model()).to(eq("Versa"))
      expect(test_vehicle.v_year()).to(eq(2012))
    end
  end

end
