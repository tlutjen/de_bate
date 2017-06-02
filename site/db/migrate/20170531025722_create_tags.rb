class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :tag_title
      t.references :card, index: true

      t.timestamps
    end
  end
end
