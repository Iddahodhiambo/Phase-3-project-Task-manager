class CreateUser < ActiveRecord::Migration[6.1]
  def change
    
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true}
      t.string :password_hash, null: false
    end
  end
end
