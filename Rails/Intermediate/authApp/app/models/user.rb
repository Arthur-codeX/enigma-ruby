class User < ApplicationRecord
    has_many :carts, foreign_key: :users_id, class_name: "Cart"
    has_many :items, through: :carts, source: :item
  end