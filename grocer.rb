def find_item_by_name_in_collection(name, collection)
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

def consolidate_cart(cart)
  cart_consolidated = []
  i = 0
  while i < cart.length do
    k = 0
    if k < cart_consolidated.length
      if cart[i][:item] == cart_consolidated[k][:item]
        cart_consolidated[k][:count] += 1
      else
        k += 1
      end
    else cart_consolidated << add_count_to_item(index)
    end
    i += 1
  end
  cart_consolidated
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
