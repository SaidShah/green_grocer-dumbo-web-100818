require "pry"


def consolidate_cart(cart)
  cart_hash = {}
  remove_duplicates = cart.uniq
  remove_duplicates.each do |each_item|
    each_item.each {|x,y| cart_hash[x.to_s]=y}
end

  cart_hash.each {|name, value| cart_hash[name][:count]=0}

 cart.each do |each_piece|
  each_piece.each {|name,stats| cart_hash[name][:count]+=1}
  
 end

 cart_hash
end

def apply_coupons(cart, coupons)
new_cart = {}
cart.collect {|x,y| new_cart[x] = y }
 coupons.each do |coupon_items|
   coupon_items.each do |each_coupon_code, each_coupon_value|
     new_cart[each_coupon_value +" /WCOUPON"]= {each_coupon_code => each_coupon_value}
    
     
  end
 
 end

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
