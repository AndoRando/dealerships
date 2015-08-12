class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    @d_name = name
    @d_id = @@dealerships.length().+(1)
    @d_cars = []
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
end
