class AddUserIdToProducts < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :user, null: true, foreign_key: true
  end
end
