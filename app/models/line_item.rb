class LineItem < ApplicationRecord

  belongs_to :product
  belongs_to :cart

def total_price
#product.price * quantity
many * quantity
end

end
