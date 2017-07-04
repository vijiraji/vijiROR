class CreateComputers < ActiveRecord::Migration[5.0]
  def change
    create_table :computers do |t|
      t.string :name
      t.string :age
      t.string :place
      t.string :gender

      t.timestamps
    end
  end
end
