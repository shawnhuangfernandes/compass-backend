class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.string :title
      t.string :header
      t.string :body
      t.string :category
      
      t.timestamps
    end
  end
end
