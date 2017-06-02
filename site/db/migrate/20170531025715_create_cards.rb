class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :title
      t.date :date_published
      t.date :date_updated
      t.references :user, index: true
      t.text :text

      t.timestamps
    end
  end
end
