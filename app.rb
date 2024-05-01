require "sinatra"
require "sinatra/reloader"


get ("/square/new") do 
  erb(:new_square)
end 

get ("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/") do
erb(:homepage)
end

get ("/square_root/new") do
  erb(:new_square)
end

get ("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = Math.sqrt(@the_num)

  erb(:square_root_results)
end
