class CreateStudent < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :id
      t.integer :cgpa
      t.string :sec
    end
  end
end
