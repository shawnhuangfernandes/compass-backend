class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.string :title
      t.string :prompt_header
      t.string :prompt_body

      t.timestamps
    end
  end
end
