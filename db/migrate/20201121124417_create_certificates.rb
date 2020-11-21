class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :alt
      t.string :src
      t.date :completed_at

      t.timestamps
    end
  end
end
