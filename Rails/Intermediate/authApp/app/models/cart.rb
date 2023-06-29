class Cart < ApplicationRecord
    self.table_name = "cart"
    belongs_to :user, foreign_key: :users_id, class_name: "User"
    belongs_to :item, foreign_key: :items_id, class_name: "Item"
  end
  