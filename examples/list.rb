require 'JsonBuddy'
require 'JsonBuddy'


j = Json.new("shopping_list.json")
# we want to add cheese to our shopping list. The value is the amount that we need.
j.add_key("cheese", 1)

# adds 4 milks to the list
j.add_number("cheese", 4)

# We need some dew. Add it to the list!
j.add_key("Mountain Dew", 2)

# on snap one of the guests dipped so you dont need as much cheese.
# you can subtract a number from the value. this case we will remove 1 from the total cheese amount.
j.subtract_number("cheese", 1)

j.change_value("cheese", 34)