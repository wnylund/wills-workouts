class ChangeSetsAndRepsToStringsAndAddNotes < ActiveRecord::Migration[6.1]
  def change
    change_column(:exercises, :sets, :string)
    change_column(:exercises, :reps, :string)
    add_column(:exercises, :notes, :string)
  end
end
