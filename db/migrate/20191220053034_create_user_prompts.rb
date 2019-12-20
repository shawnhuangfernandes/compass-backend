class CreateUserPrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_prompts do |t|
      t.integer :user_id
      t.integer :prompt_id
      t.string :response
      t.boolean :complete

      t.timestamps
    end
  end
end
