class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.boolean   :active
      t.timestamp :deleted_at
      t.float     :mean_price
      t.string    :name
      t.float     :rating

      t.timestamps
    end
  end
end
