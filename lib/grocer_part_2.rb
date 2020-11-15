require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon| 
    coupon.each do |key, value| 
      name = coupon[:item] 
      if cart[name] && cart[name][:count] >= coupon[:num]
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], 
          :clearance => cart[name][:clearance], :count => 1} 
        end 
      cart[name][:count] -= coupon[:num] 
      end 
    end 
  end 
  cart 
end

def apply_clearance(cart)
 cart.each do |product_name, stats|
    stats[:price] -= stats[:price] * 0.2 if stats[:clearance]
end
cart
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
  
   total = 0 
  new_cart = consolidate_cart(cart) 
  coupon_cart = apply_coupons(new_cart, coupons) 
  clearance_cart = apply_clearance(coupon_cart) 
  clearance_cart.each do |item, attribute| 
    total += (attribute[:price] * attribute[:count])
  end 
total = (total * 0.9) if total > 100 total 
end
