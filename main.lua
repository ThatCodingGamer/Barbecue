print("The rules of the game are simple. You're planning a barbecue, and you must invite some guests, and calculate how much food and fuel you will need. For every 8 meat items, you need one bag of charcoal. Each guest will need a bottle of soda. Be sure that your guests have enough food, and know that each guest has a limit of two meat items. Would you like to continue? (y/n) ")
while not dontContinue do 
  if io.read() == "y" or "Y" then
    dontContinue = true
  end
end

io.write("What is your name? ")
user_name = io.read()

print("Welcome to the game. ")

io.write("How many guests would you like to invite to your barbecue, " .. user_name .. "? ")
Guests = tonumber(io.read())

io.write("How many hamburgers will you need? ")
Burgers = tonumber(io.read())

io.write("How many hotdogs will you need? ")
Hotdogs = tonumber(io.read())

io.write("How many bottles of Canada Dry will you need? ")
Soda = tonumber(io.read())

io.write("How many bags of charcoal must you have in order to be able to grill? ")
Charcoal = tonumber(io.read())

local bbq = Hotdogs + Burgers


if bbq <= 2 * Guests then
  print("You had enough meat and your guests enjoyed your barbecue. Good job, " .. user_name .. "!") else
    print("You didn't bring enough food, do your math next time.")
end

if Soda >= Guests then
  print("You brought enough soda for everybody, and your guests loved it!") else
    print("You didn't bring enough soda, come on, " .. user_name .. ", you can do better than that!")
end

if bbq > 2 * Guests then 
  print("You brought too much food, and the extras spoiled, good job, " .. user_name .. ". ")
end

if Charcoal >= bbq / 8 then
  print("You brought enough charcoal to cook the meat.") else 
    print("You didn't have enough charcoal to cook the meat.")
end

if Soda > 2 * Guests then 
  print("You brought too much soda, and had to pour the rest out. What a waste of money.")
end