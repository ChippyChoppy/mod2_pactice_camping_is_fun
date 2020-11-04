class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.references :camper
      t.references :activity
      t.integer :time

      t.timestamps
    end
  end
end
