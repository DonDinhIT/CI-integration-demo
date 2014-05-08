class CreateSumaryScores < ActiveRecord::Migration
  def change
    create_table :sumary_scores do |t|
      t.integer :student_id
      t.integer :score

      t.timestamps
    end
  end
end
