class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :service_type
      t.text :address
      t.float :price_per_hour
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
