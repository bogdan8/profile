class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :alt
      t.string :src

      t.timestamps
    end
  end
end
