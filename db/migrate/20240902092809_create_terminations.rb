class CreateTerminations < ActiveRecord::Migration[7.2]
  def change
    create_table :terminations do |t|
      t.date :termination_date

      t.timestamps
    end
  end
end
