class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.date :opened_date
      t.date :due_date
      t.integer :company_id
      t.integer :user_id
      t.string :role_title
      t.integer :function_id
      t.date :date_submitted
      t.integer :location_id
      t.integer :offer_id

      t.timestamps
    end
  end
end
