class CreateBuses < ActiveRecord::Migration[5.1]
  def change
    create_table :buses do |t|
      t.string :name
      t.srting :color
      t.numeric :no

      t.timestamps
    end
  end
end
