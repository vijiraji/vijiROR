class CreateSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.string :address
      t.string :phone_no

      t.timestamps
    end
  end
end
