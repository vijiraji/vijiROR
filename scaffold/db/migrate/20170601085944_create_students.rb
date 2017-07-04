class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :phone
      t.string :email
      t.string :city
      t.string :pincode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
