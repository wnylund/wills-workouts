class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :split_day

      t.timestamps
    end
  end
end
