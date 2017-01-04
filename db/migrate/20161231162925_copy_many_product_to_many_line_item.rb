class CopyManyProductToManyLineItem < ActiveRecord::Migration[5.0]
  
def up
	LineItem.all.each do |lineitem|
       #lineitem.update_attribute :many, 25.00
       lineitem.update_attributes :many => 5.00
      end
end

end