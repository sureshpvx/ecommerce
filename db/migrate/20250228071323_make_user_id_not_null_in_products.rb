class MakeUserIdNotNullInProducts < ActiveRecord::Migration[8.0]
  def change
    change_column_null :products, :user_id, false
  end
end
