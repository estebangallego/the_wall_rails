class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.text :post
      t.references :user, index: true

      t.timestamps
    end
  end
end
