class CreateMuvies < ActiveRecord::Migration
  def change
    create_table :muvies do |t|
      t.string :title
      t.integer :year
      t.integer :rating
      t.string :language
      t.string :actor
      t.string :director
      t.string :producer

      t.timestamps null: false
    end
  end
end
