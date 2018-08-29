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

  cart.each do |cart_item, item_values|
    new_cart[cart_item]=item_values
    coupons.each do |each_coupon|
      
       if cart_item == each_coupon[:item]
         
         if item_values[:count] >= each_coupon[:num]
           item_values[:count]-=each_coupon[:num]
         
          if new_cart.include?("#{cart_item} W/COUPON")
            new_cart["#{cart_item} W/COUPON"][:count] += 1 
          
        else 
          new_cart["#{cart_item} W/COUPON"] = {
            :price => each_coupon[:cost],
            :clearance => item_values[:clearance],
            :count => 1
          }
          
          
   end
    end
     end
      end
       end
        new_cart
         end







def apply_clearance(cart)

cart.each do |cart_item, item_value|
  item_value.each do |field, value|
    if field == :clearance && item_value[:clearance]==true 
        item_value[:price] = calc_discount(item_value[:price])
end
 end
  end
   end

def checkout(cart, coupons)
  # code here
end


def calc_discount(num_given)
(num_given-(num_given*0.20)).to_f 
end



































