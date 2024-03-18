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

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @random_number = rand(@min..@max).to_f
  
  erb(:random_result)
end


get ("/payment/new") do
  erb (:payment)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @present_value = params.fetch("user_pv").to_f
  erb(:payment_result)
end



get ("/payment/new") do
  erb (:payment)
end



get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
