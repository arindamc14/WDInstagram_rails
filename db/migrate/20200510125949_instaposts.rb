class Instaposts < ActiveRecord::Migration[5.2]
  def change
  create_table :instaposts do |t|
  t.string :title
  t.text :author_name
  t.text :photo_url
  t.timestamps
  end
end
