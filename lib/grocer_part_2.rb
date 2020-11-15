def apply_coupons(cart, coupons)
  # code here	coupons.each do |coupon|
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
