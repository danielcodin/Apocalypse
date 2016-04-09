class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.decimal :price
      t.text :title
      t.text :body
      t.text :image

      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
