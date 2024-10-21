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

  get("/payment/new") do
    erb(:new_payment)
   end
   
   get("/payment/results") do
     @the_apr = (params.fetch("apr_input").to_f)
     @the_apr_unit = (params.fetch("apr_input").to_f)/100/12
     @the_year = params.fetch("years_input").to_i 
     @the_year_unit = params.fetch("years_input").to_i * 12
     @the_principal = params.fetch("principal_input").to_f
     @payment_result = (@the_apr_unit*@the_principal) / (1-(1+@the_apr_unit)**(@the_year_unit*-1))
    erb(:payment_results)
    end
 
