class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.string :weight
      t.string :reps
      t.string :notes
      t.bigint :exercise_id

      t.timestamps
    end
  end
end
