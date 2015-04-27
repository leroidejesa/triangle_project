require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/returned_value') do
  side1 = params.fetch('first_side')
  side2 = params.fetch('second_side')
  side3 = params.fetch('third_side')
  new_triangle = Triangle.new(side1, side2, side3)
  @final_answer = new_triangle.triangle_type()
  erb(:returned_value)
end
