require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  for i in 0...coupons.length do
    name = coupons[i][:item]
    if (cart.keys.include?(name)) && (cart[name][:count] >= coupons[i][:num])
      cart[name][:count] -= coupons[i][:num]
      if cart.keys.include?("#{name} W/COUPON")
        cart["#{name} W/COUPON"][:count] += coupons[i][:num]
      else
        cart["#{name} W/COUPON"] = {}
        cart["#{name} W/COUPON"][:count] = coupons[i][:num]
        cart["#{name} W/COUPON"][:price] = coupons[i][:cost]/coupons[i][:num]
        cart["#{name} W/COUPON"][:clearance] = cart[name][:clearance]
      end
    end
  end
  cart
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
