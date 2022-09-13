class CreateWorkoutDashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_dashboards do |t|

      t.timestamps
    end
  end
end
