# test data sets
cart1 = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 2.00, :clearance => false}
]

def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
    else index += 1
    end
  end
end

# Duplicate find_item_by_name_in_collection with shorter method name. Annoying to type.
def fibnic(name, collection)
  index = 0
  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
    else index += 1
    end
  end
end

def add_count_to_item(item_info)
  {
    :item => item_info[:item],
    :price => item_info[:price],
    :clearance => item_info[:clearance],
    :count => 1
  }
end

def consolidate_cart(cart)
  cart_consolidated = [add_count_to_item(cart[0])]
  i = 1
  while i < cart.length do
    k = 0
    old_item = cart[i]
    # Doesn't work
    # if cart[i][:item] == cart_consolidated[k][:item]
    #   cart_consolidated[k][:count] += 1
    # elsif cart_consolidated[k] = nil || cart_consolidated[k+1] = nil
    #   cart_consolidated << add_count_to_item(cart[i])
    # else
    #   k += 1
    # end
    if fibnic(old_item[:item],cart_consolidated)
      fibnic(old_item[:item],cart_consolidated)[:count] += 1
    else
      cart_consolidated << add_count_to_item(old_item)
    end
    i += 1
  end
  if cart[0] != nil
    cart_consolidated
  else
    print "Your cart is empty!"
  end
  # Consult README for inputs and outputs
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end
consolidate_cart(cart1)

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
