class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string "test_type"
      t.string "total_score"
      t.string "listening_score"
      t.string "reading_score"
      t.string "speaking_score"
      t.string "writing_score"
      t.timestamps
    end
  end
end
