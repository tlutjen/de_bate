class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :author_first
      t.text :author_last
      t.text :credentials

      t.timestamps
    end
  end
end
