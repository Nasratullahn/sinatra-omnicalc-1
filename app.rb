require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  
  erb(:hello)
end


get("/square/new") do 
  erb(:square_calc)
end

get("/square/results") do 
  @the_num = params.fetch("users_number").to_f
  
  @the_result = @the_num ** 2
  
  erb(:square_res)
end

get("/square_root/new") do 
  erb(:squarerootcalc)
end

get("/square_root/results") do 
  @the_num = params.fetch("users_number").to_f
  
  @the_result = Math.sqrt(@the_num)
  
  erb(:squarerootresults)
end

get ("/random/new") do
  erb(:random) 
end

get("/random") do
  @min = params[:min].to_f
  @max = params[:max].to_f
  @random_number = rand(min..max).to_f
 
 
  erb(:randomres)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
