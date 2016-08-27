class CreateImagesTable < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :product, index: true
      t.attachment :data
      t.timestamps null: false
    end
  end
end
