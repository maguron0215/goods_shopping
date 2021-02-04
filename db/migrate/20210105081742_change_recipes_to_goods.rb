class ChangeRecipesToGoods < ActiveRecord::Migration[6.1]
  def change
    rename_table :recipes, :goods
  end
end
