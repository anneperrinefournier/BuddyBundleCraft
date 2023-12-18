class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.float :total_price
      t.integer :status

      t.timestamps
    end
  end
end
