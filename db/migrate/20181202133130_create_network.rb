class CreateNetwork < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.string :title
      t.string :link
      t.string :icon

      t.belongs_to :contact, foreign_key: true
    end
  end
end
