class CreateSections < ActiveRecord::Migration[4.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :body
      t.references :post
      t.timestamps
    end
  end
end
