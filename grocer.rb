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

  
    each_coupon.each do |item, values|
      new_cart[item]=values
      cart.each do |cart_item, item_values|
       coupons.each do |each_coupon|
     binding.pry
   end      
     end
   end
     new_cart

       end







def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
