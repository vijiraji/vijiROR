class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :place

      t.timestamps
    end
  end
end
