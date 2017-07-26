require "sinatra"


get '/' do 
erb :name 	
end

post '/first_name' do
  	first_name = params[:first_name]
	redirect '/last_name?first_name='+ first_name
end

get '/last_name' do
	first_name = params[:first_name]
	erb :last_name, locals: {first_n: first_name} 
end

post '/last_name' do
	last_name = params[:last_name]
	first_name = params[:first_name]
	#"#{first_name} #{last_name}"
	redirect '/hair?last_name=' + last_name + "&first_name=" + first_name	
end

get '/hair' do
	last_name = params[:last_name]
	first_name = params[:first_name]
	#"#{first_name} & #{last_name}"
	erb :hair, locals: {first_name: first_name, last_name: last_name}
end	

post '/hair_color' do
	last_name = params[:last_name]
	first_name = params[:first_name]
	hair_color = params[:hair_color]
  #"Soo.. #{first_name}d a #{last_name} you habbid a #{hair_color} hair coolur"
  redirect 'eye?hair_color=' + hair_color + "&first_name=" + first_name + "&last_name=" + last_name
end

get '/eye' do
	last_name = params[:last_name]
	first_name = params[:first_name]
	hair_color = params[:hair_color]
	erb :eye, locals: {first_name: first_name, last_name: last_name, hair_color: hair_color}
end

post '/eye_color' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	#"So #{first_name} #{last_name} your hair color is #{hair_color} and your eye color is #{eye_color}"
	redirect 'age?eye_color=' + eye_color + "&hair_color=" + hair_color + "&last_name=" + last_name + "&first_name=" + first_name
end	

get '/age' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	erb :age, locals: {first_name: first_name, last_name: last_name, hair_color: hair_color, eye_color: eye_color}
end

post '/your_age' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	#"So, #{first_name} #{last_name} your hair is #{hair_color}, your eyes are #{eye_color}, and you are #{your_age} years old"
	redirect 'food?your_age=' + your_age + "&eye_color=" + eye_color + "&hair_color=" + hair_color + "&last_name=" + last_name + "&first_name=" + first_name
end

get '/food' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	erb :food, locals: {first_name: first_name, last_name: last_name, hair_color: hair_color, eye_color: eye_color, your_age: your_age}
end

post '/fav_food' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	#"So #{first_name} #{last_name}, you are #{your_age} years old, have #{hair_color} hair and #{eye_color} eyes, and you favorite food is #{fav_food}"
	redirect 'drink?fav_food=' + fav_food + "&your_age=" + your_age + "&eye_color=" + eye_color + "&hair_color=" + hair_color + "&last_name=" + last_name + "&first_name=" + first_name
end	

get '/drink' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	erb :drink, locals: {first_name: first_name, last_name: last_name, hair_color: hair_color, eye_color: eye_color, your_age: your_age, fav_food: fav_food}
end

post '/fav_drink' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	fav_drink = params[:fav_drink]
	#"So #{first_name} #{last_name}, you are #{your_age} years old, have #{hair_color} hair and #{eye_color} eyes, and you favorite food and dink is #{fav_food} and #{fav_drink}"
	redirect 'fav_nums?fav_drink=' + fav_drink + "&fav_food=" + fav_food + "&your_age=" + your_age + "&eye_color=" + eye_color + "&hair_color=" + hair_color + "&last_name=" + last_name + "&first_name=" + first_name
end

get '/fav_nums' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	fav_drink = params[:fav_drink]
	erb :nums, locals: {first_name: first_name, last_name: last_name, hair_color: hair_color, eye_color: eye_color, your_age: your_age, fav_food: fav_food, fav_drink: fav_drink}
end

post '/fav_nums' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	fav_drink = params[:fav_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	#"So #{first_name} #{last_name}, you are #{your_age} years, your favoite food and drink is #{fav_food} and #{fav_drink} and now your telling me your 3 favorit numbers are #{num1}, #{num2}, amd #{num3}"
	redirect 'results?num1=' + num1 + "&num2=" + num2 + "&num3=" + num3 + "&fav_drink=" + fav_drink + "&fav_food=" + fav_food + "&your_age=" + your_age + "&eye_color=" + eye_color + "&hair_color=" + hair_color + "&last_name=" + last_name + "&first_name=" + first_name
end

get '/results' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	fav_drink = params[:fav_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	erb :results, locals: {first_name: first_name, last_name: last_name, hair_color: hair_color, eye_color: eye_color, your_age: your_age, fav_food: fav_food, fav_drink: fav_drink, num1: num1, num2: num2, num3: num3}
end	

post '/results' do
	hair_color = params[:hair_color]
	last_name = params[:last_name]
	first_name = params[:first_name]
	eye_color = params[:eye_color]
	your_age = params[:your_age]
	fav_food = params[:fav_food]
	fav_drink = params[:fav_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
end


