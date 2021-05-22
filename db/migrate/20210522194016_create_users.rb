class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :technical_background
      t.boolean :cs_dual_degree
      t.integer :applications_count

      t.timestamps
    end
  end
end
