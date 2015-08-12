class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    @d_name = name
    @d_id = @@dealerships.length().+(1)
  end

  define_method(:d_name) do
    @d_name
  end

  define_method(:d_id) do
    @d_id
  end
end
