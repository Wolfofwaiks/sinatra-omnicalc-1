require "sinatra"
require "sinatra/reloader"

get("/howdy") do 
  erb(:hello)
end 
  
get ("/goodbye") do 
  erb(:bye)
end 

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
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end
