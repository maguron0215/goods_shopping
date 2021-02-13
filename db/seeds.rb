class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string  :email,              null: false, default: ""
      t.string  :encrypted_password, null: false, default: ""
      t.string  :name,               null: false
      ## 以下追記！！
      t.boolean :guest, default: false, null: false
　## 以下省略


  end
end
