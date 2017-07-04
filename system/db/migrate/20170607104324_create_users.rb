class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :id
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
