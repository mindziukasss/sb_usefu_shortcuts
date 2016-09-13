class CreateTextsublimes < ActiveRecord::Migration
  def change
    create_table :textsublimes do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
