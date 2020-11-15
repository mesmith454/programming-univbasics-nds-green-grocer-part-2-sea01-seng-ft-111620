require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
coupCart = cart
  count = 0
  while coupons[count] do
    if cart[coupons[count][:item]]
      if cart[coupons[count][:item]][:count] >= coupons[count][:num]
        coupCart[coupons[count][:item]][:count] = coupCart[coupons[count][:item]][:count] - coupons[count][:num]
        coupItem = "#{coupons[count][:item]} W/COUPON"
        coupPrice = coupons[count][:cost] / coupons[count][:num]
        if coupCart[coupItem]
          coupCount = coupCart[coupItem][:count] + coupons[count][:num]
        else
          coupCount = coupons[count][:num]
        end
        coupCart[coupItem] = {:price => coupPrice, :clearance => coupCart[coupons[count][:item]][:clearance], :count => coupCount}
        count += 1
      else
        count += 1
      end
    else
      count += 1
    end
  end
  coupCart
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
