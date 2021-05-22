class CreateStatusEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :status_events do |t|
      t.integer :event_type
      t.date :date
      t.integer :application_id

      t.timestamps
    end
  end
end
