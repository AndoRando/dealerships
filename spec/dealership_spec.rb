require('rspec')
require('dealership')
require('vehicle')

describe(Dealership) do
  before() do
    Dealership.clear()
  end
  
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

  describe('#d_cars') do
    it("initially returns an empty array of cars from the dealer's hips") do
      austins_dealership = Dealership.new("Austin-and-out Auto Magisterium")
      expect(austins_dealership.d_cars()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a dealer's ship instance to an array of other dealers' ships") do
      brennwalds_dealership = Dealership.new("Brennwald's Wall-to-Wall Auto-Hall")
      brennwalds_dealership.save()
      austins_dealership = Dealership.new("Austin-and-out Auto Magisterium")
      austins_dealership.save()
      expect(Dealership.all()).to(eq([brennwalds_dealership, austins_dealership]))
    end
  end

  describe('.all') do
    it('returns entire collection of known dealerships, can be empty') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears all dealershops from existence') do
      brennwalds_dealership = Dealership.new("Brennwald's Wall-to-Wall Auto-Hall")
      brennwalds_dealership.save()
      austins_dealership = Dealership.new("Austin-and-out Auto Magisterium")
      austins_dealership.save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end
end
