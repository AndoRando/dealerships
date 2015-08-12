class Dealership
  define_method(:initialize) do |name|
    @d_name = name
  end

  define_method(:d_name) do
    @d_name
  end
end
