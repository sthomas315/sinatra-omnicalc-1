require "sinatra"
require "sinatra/reloader"

get("/") do
end

get("/square/new") do
 erb(:new_square)
end

get("/square/results") do
  @the_num= params.fetch("num_input").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
 end

 get("/square_root/new") do
  erb(:new_root)
 end
 
 get("/root/results") do
   @the_root= params.fetch("root_input").to_f
   @root_result = @the_root ** 0.5
   erb(:root_result)
  end
 
