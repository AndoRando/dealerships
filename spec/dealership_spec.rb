require('rspec')
require('dealership')
require('vehicle')

describe(Dealership) do
  describe('#d_name') do
    it('returns the name of this particular dealershack') do
      austins_dealership = Dealership.new("Austin-and-out Auto Magisterium")
      expect(austins_dealership.d_name()).to(eq("Austin-and-out Auto Magisterium"))
    end
  end

  describe('#d_id') do
    it('returns unique dealerchip ID') do
      brennwalds_dealership = Dealership.new("Brennwald's Wall-to-Wall Auto-Hall")
      expect(brennwalds_dealership.d_id()).to(eq(1))
    end
  end
end
