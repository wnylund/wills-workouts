class AddWorkoutIdToExercise < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :workout_id, :bigint
  end
end
