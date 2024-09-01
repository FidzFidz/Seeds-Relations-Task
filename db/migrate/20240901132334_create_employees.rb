class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :hire-date
      t.string :employment-number
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
