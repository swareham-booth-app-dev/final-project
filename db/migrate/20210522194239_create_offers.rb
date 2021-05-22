class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :date_received
      t.date :response_due_date
      t.float :annual_salary
      t.float :signing_bonus
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
