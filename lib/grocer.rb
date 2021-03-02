require "pry"

def find_item_by_name_in_collection(name, collection)
  found_item = nil
  collection.each do |grocery|
    if grocery[:item] == name
      found_item = grocery
    end
  end
  found_item
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |grocery|
    find_item_by_name_in_collection(cart)
    if new_cart[:item]
      new_cart[:item][:count] = 1
    elsif new_cart[:item][:count] > 1
      new_cart[:count] += 1
    end
  end
  new_cart
end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  