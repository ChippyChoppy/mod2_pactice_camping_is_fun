class CreateCamperActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :camper_activities do |t|
      t.integer :camper_id
      t.integer :activity_id
      t.integer :signup

      t.timestamps
    end
  end
end
