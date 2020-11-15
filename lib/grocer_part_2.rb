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