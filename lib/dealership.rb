class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    @d_name = name
    @d_id = @@dealerships.length().+(1)
    @d_cars = []
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find_d_id) do |id|
    dealership_search_result = nil
    @@dealerships.each() do |dealership|
      if dealership.d_id() == id
        dealership_search_result = dealership
      end
    end
    dealership_search_result
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:d_name) do
    @d_name
  end

  define_method(:d_id) do
    @d_id
  end

  define_method(:d_cars) do
    @d_cars
  end

  define_method(:add_vehicle) do |vehicle|
    @d_cars.push(vehicle)
  end

end
