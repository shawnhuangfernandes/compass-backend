class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.belongs_to :user
      t.belongs_to :prompt
      t.string :body
      t.boolean :complete

      t.timestamps
    end
  end
end
