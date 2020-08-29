class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :volume
      t.float :unit_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
