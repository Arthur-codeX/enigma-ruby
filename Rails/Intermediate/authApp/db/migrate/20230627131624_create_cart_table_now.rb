class CreateCartTableNow < ActiveRecord::Migration[7.0]
  def change
    create_table :cart do |t|
      t.references :items, foreign_key: true
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
