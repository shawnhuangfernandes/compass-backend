class CreateCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :curriculums do |t|
      t.string :name
      t.integer :progress

      t.timestamps
    end
  end
end
