require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
    coupons.each do |coupon|
      item = coupon[:item]
       if cart.has_key?(item) 
          if !cart["#{item} W/COUPON"] && cart[item][:count] >= coupon[:num]
          cart["#{item} W/COUPON"] = {count: coupon[:num], price: coupon[:cost]/coupon[:num], clearance: cart[item][:clearance]}
          cart[item][:count] -= coupon[:num]
          elsif cart["#{item} W/COUPON"] && cart[item][:count] >= coupon[:num]
          cart["#{item} W/COUPON"][:count] += coupon[:num]
          cart[item][:count] -= coupon[:num]
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
  applied_coupons = apply_coupons(hash_cart, coupons)
  applied_discount = apply_clearance(applied_coupons)
  total = applied_discount.reduce(0) { |acc, (key, value)| acc += value[:price] * value[:count]}
  total > 100 ? total * 0.9 : total
end