require('rspec')
require('dealership')
require('vehicle')

describe(Dealership) do
  describe('#d_name') do
    it('returns the name of this particular dealershack') do
      test_dealership = Dealership.new("Chuck's VW Shack")
      expect(test_dealership.d_name()).to(eq("Chuck's VW Shack"))
    end
  end
end
