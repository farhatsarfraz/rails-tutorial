class CreateTeacher < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :salary
      t.string :dep

    end
  end
end
