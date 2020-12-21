class CreateBackwares < ActiveRecord::Migration[6.0]
  def change
    create_table :backwares do |t|
      t.string :name
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
