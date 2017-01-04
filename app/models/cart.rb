class Cart < ApplicationRecord
	has_many :line_items, dependent: :destroy

	def add_product(product_id)
current_item = line_items.find_by(product_id: product_id)
if current_item
current_item.quantity += 1
else
current_item = line_items.build(product_id: product_id)
set_many(current_item,product_id)
end
current_item
end


def set_many(current_item,product_id)
	product= Product.find(product_id)
	current_item.many= product.price
end

def total_price
line_items.to_a.sum { |item| item.total_price }
end

end
