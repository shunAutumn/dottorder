class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :toptitle,     null: false
      t.text :topdescription,     null: false
      t.string :title,           null: false
      t.text :description,        null: false
      t.text :url
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
