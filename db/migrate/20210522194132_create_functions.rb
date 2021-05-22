class CreateFunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :functions do |t|
      t.string :name
      t.integer :applications_count

      t.timestamps
    end
  end
end
