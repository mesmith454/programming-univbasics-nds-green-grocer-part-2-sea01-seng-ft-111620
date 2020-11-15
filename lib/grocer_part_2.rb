 def apply_coupons(cart, coupons)	def apply_coupons(cart, coupons)
  # code here	  
end	  coupons.each do |coupon| 
    if cart.keys.include? coupon[:item] 
      if cart[coupon[:item]][:count] >= coupon[:num]   than coupon num
        new_name = "#{coupon[:item]} W/COUPON" 
        if cart[new_name]
          cart[new_name][:count] += coupon[:num] # 
        else
          cart[new_name] = { 
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
          }
        end
        cart[coupon[:item]][:count] -= coupon[:num]  
      end
    end
  end
  cart 
end	
