class CreateHod < ActiveRecord::Migration[5.1]
  def change
    create_table :hods do |t|
      t.string :name
      t.integer :salary
      t.string :dep
    end
  end
end
