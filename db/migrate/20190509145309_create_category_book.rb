class CreateCategoryBook < ActiveRecord::Migration[5.2]
  def change
    create_table :category_books do |t|
      t.string :title
      t.integer :position, default: 0, null: false
    end

    add_reference :books, :category_book, index: true
  end
end
