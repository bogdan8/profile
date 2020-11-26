class CreateContact < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :date_of_birth
      t.string :address
      t.string :email
      t.string :phone
    end
  end
end
