class CreateUserCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :user_curriculums do |t|
      t.integer :user_id
      t.integer :curriculum_id

      t.timestamps
    end
  end
end
