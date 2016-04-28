# gps 2.2 ruby

# release 1

# create new list
# string as variable
# define hash / 
# breakout words from string / assign them to values in an array
# take values from array store in hash as key with default value of 0.
# print list to console to test

# add item with quantity to list
# add an item on to the list with quantity using hash methods

# remove an item from list
# remove item and quantity from list

# update quantities for items in your list
# accept item name as parameter 
# match key / change value

# print list
# puts hash


# create new list



def make_list(string)
  grocery_list = {}
  array = string.split(" ")
  array.each { |item| grocery_list[item] = 0 }
  grocery_list
end
  

# # add item w/ quantity

def addto_list(grocery_list, newitem, quantity)
  grocery_list[newitem] = quantity
  grocery_list
end

# # remove item

def remove_item(grocery_list, rem_item)
  grocery_list.delete(rem_item)
  grocery_list
end

# # update quantities for items

def modquant(grocery_list, item, quantity)
  # if item already exists in grocery_list, then carry out the following instructions, otherwise quit
  if grocery_list.include?(item)
     grocery_list[item] = quantity
  end
  grocery_list
end

# # print

def printlist(grocery_list)
  grocery_list.each { |item, quant| puts "#{item}: #{quant}" }
end


glist = make_list("fruit waffles coffee")
addto_list(glist, "lemonade", 2)
addto_list(glist, "tomatoes", 3)
addto_list(glist, "onions", 1)
addto_list(glist, "ice cream", 4)
remove_item(glist, "lemonade")
modquant(glist, "ice cream" , 1)
printlist(glist)
