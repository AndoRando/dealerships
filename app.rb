require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/vehicle')
require('./lib/dealership')

get('/') do
  erb(:index)
end

get('/add_dealership') do
  erb(:add_dealership)
end

get('/dealership_list') do
  @dealership_list = Dealership.all()
  erb(:dealership_list)
end

post('/dealership_list') do
  name = params.fetch('d_name')
  Dealership.new(name).save()
  #@dealership = Dealership.find_d_id(params.fetch('id').to_i())
  @dealership_list = Dealership.all()
  erb(:dealership_list)
end

get('/vehicle_detail/:id') do
  @vehicle = Vehicle.find_id(params.fetch('id').to_i())
  erb(:vehicle_detail)
end

get('/dealership_detail/:id') do
  @dealership = Dealership.find_d_id(params.fetch('id').to_i())
  erb(:dealership_detail)
end

get('/dealership_detail/:id/vehicles/new') do
  @dealership = Dealership.find_d_id(params.fetch('id').to_i())
  erb(:add_vehicle)
end

post('/add_vehicle_success') do
  make = params.fetch('v_make')
  model = params.fetch('v_model')
  year = params.fetch('v_year')
  @vehicle = Vehicle.new(make, model, year)
  @vehicle.save()
  @dealership = Dealership.find_d_id(params.fetch('d_id').to_i())
  @dealership.add_vehicle(@vehicle)
  erb(:add_vehicle_success)
end
