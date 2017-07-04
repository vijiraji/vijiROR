class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :usr_id
      t.string :password
      t.string :email
      t.string :dept

      t.timestamps
    end
  end
end
