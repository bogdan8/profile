class CreateCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations do |t|
      t.integer :article_id
      t.integer :category_id

      t.timestamps
    end

    add_index :categorizations, %i[article_id category_id]
  end
end
