class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user
      t.references :ticket

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :ticket_id
  end
end
