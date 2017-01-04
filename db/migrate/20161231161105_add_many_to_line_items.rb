class AddManyToLineItems < ActiveRecord::Migration[5.0]
 def up
  add_column :line_items, :many, :decimal, precision: 8, scale: 2, default: 1.00
end

def down
  remove_column :line_items, :many
end
end
