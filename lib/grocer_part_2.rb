require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
  name = coupon[:item] #makes things easier

  if cart[name] && cart[name][:count] >= coupon[:num]
    if cart["#{name} W/COUPON"]
      cart["#{name} W/COUPON"][:count] += coupon[:num]
    else
      cart["#{name} W/COUPON"] = {:price => coupon[:cost]/coupon[:num], :clearance => cart[name][:clearance], :count => coupon[:num]}
    end
  cart[name][:count] -= coupon[:num]
  end
end
cart
end

def apply_clearance(cart)
   cart.each do |item, info|
    if info[:clearance] == true 
      info[:price] = (info[:price] * 0.8).round(2)
    end
  end
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
