require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')


get('/') do
  erb(:index)
end

get('/parcel')  do
  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  weight = params.fetch('weight')
  speed = params.fetch('speed')
  @parcel = Parcel.new(length,width,height,weight,speed)
  erb(:parcel)
end
