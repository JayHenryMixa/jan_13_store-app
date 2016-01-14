Rails.application.routes.draw do

 get '/available' => 'fishes#fish'

 get '/all_available' => 'fishes#all_fish' 

end
