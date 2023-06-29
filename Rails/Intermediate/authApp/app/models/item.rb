class Item < ApplicationRecord
    has_many :carts, foreign_key: :items_id, class_name: "Cart"
    has_many :users, through: :carts, source: :user
  end