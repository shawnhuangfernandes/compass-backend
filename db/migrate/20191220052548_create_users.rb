class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :icon_gif

      t.timestamps
    end
  end
end
