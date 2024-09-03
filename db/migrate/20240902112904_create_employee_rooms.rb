class CreateEmployeeRooms < ActiveRecord::Migration[7.2]
  def change
    create_table :employees_rooms do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
