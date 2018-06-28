class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :short_description
      t.text :long_description
      t.string :author
      t.string :link
      t.string :link_text

      t.timestamps
    end
  end
end
