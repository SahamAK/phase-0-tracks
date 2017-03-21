# GPS 2.2
# Saham Khozestani and Paul Newsam guided by Aji Slater

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # SPLIT the string into an array
  # For each item in the array, create a key/value pair in the hash with string as key and default quantity of 0 as value
  # PRINT the hash to the console [can you use one of your other methods here?]
# output: hash (because we want to correspond a quantity with each item)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
  # IF no quantity provided, quantity is 0
  # PUSH item to list with quantity
# output: updated list

# Method to remove an item from the list
# input: list, item name (to be removed)
# steps: 
  # FOR each item, remove from list
# output: updated list

# Method to update the quantity of an item
# input: list, item name, updated quantity
# steps:
  # WHILE not end of list, update items with quantity
# output: updated list

# Method to print a list and make it look pretty
# input: updated list
# steps: 
  # EACH key/value pair
    # Print item name and quantity in a pretty way
# output: prettyfied list


def create_list(string)
  grocery_list = {}
  array = string.split

  array.each do | item |
    grocery_list["#{item}"] = 0
  end
  grocery_list
end
#---------------------------------
def add_item(list,item,quantity=0)

  list["#{item}"] = quantity
  list
end
#--------------------------------------
#remove item from list
def delete_item(list,item)
  list.delete(item)
  list
end
#-------------------------------
def update_qty(list,item,quantity)
  list["#{item}"] = quantity
  list
end

def print_list(list)
  puts "Grocery list"
  puts ""

  list.each { |item, qty| puts "#{item}      #{qty}"}
end
     
grocery_list = create_list('carrots cereal icecream')
puts grocery_list
puts add_item(grocery_list,"pizza", 3)
puts delete_item(grocery_list,"cereal")
puts update_qty(grocery_list,"carrots",2)
puts ''
print_list(grocery_list)

#------------------------------------------

=begin
Release 4: Reflect

WHAT DID YOU LEARN ABOUT PSEUDOCODE FROM WORKING ON THIS CHALLENGE?
  Pseudocode is writing the steps you want to take to prior to coding. This helps to break down
  your codes to steps to see the big picture. Without pseudocode, it will be a big mess to write 
  a program. 

WHAT THE TRADEOFFS OF USING ARRAYS AND HASHES FOR THIS CHALLENGE?
  Array is a list of items. We needed hash here since each of our item is associated with a value.
  Hash simplified accessing quantities for each item.It is less steps using the hash.

WHAT DOES A METHOD RETURN?
  Each method in this program returned the updated list. The last method, print_list, used to print the list.

WHAT KIND OF THINGS CAN YOU PASS INTO METHODS AS ARGUMENTS?
  We can pass integer, strings, arrays, hashes, and other methods.

HOW CAN YOU PASS INFORMATION BETWEEN METHODS?
  Information can be passed by calling the method as an argument or passing the return value 
  of the method in the argument.

WHAT CONCEPTS WERE SOLIDIFIED IN THIS CHALLENGE, AND WHAT CONCEPTS ARE STILL CONFUSING?
  This was a real life scenario of using a list. This was a good comparison between hashes and arrays.
  Also, we tried to use the built-in methods for hash and array. This simplified our code. I still have to need to work
  on he syntax of these commands.



  
  
=end


