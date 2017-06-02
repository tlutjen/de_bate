class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.date :date_published
      t.text :url
      t.text :source_name
      t.text :source_resource
      t.references :card, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
