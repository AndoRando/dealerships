class Vehicle
  define_method(:initialize) do |make, model, year|
    @v_make = make
    @v_model = model
    @v_year = year
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
