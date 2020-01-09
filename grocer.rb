def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
    else index += 1
    end
  end
end

def consolidate_cart(cart)
  cart_consolidated = []
  index = 0
  while index < cart.length do
    mindex = 0
    orig_cart_item = cart[index][:item]
    new_cart_item = cart_consolidated[mindex][:item]
    if orig_cart_item == new_cart_item && mindex < cart_consolidated.length
      new_cart_item[:count] += 1
      mindex += 1
    else
      cart_consolidated[index] = {
        item: orig_cart_item[:item],
        price: orig_cart_item[:price],
        clearance: orig_cart_item[:clearance],
        count: 1
      }
    end
    index += 1
  end
  # Consult README for inputs and outputs
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

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
