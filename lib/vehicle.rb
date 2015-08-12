class Vehicle
  @@vehicles = []
  define_method(:initialize) do |make, model, year|
    @v_make = make
    @v_model = model
    @v_year = year
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_method(:v_make) do
    @v_make
  end

  define_method(:v_model) do
    @v_model
  end

  define_method(:v_year) do
    @v_year
  end


end
