class CreateUserTable < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tables do |t|
      t.string :name
      t.string :email
      t.string :password 
      t.timestamps
    end
  end
end
