class CreateLessonPrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_prompts do |t|
      t.integer :prompt_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
