class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string    :asset_file_name
      t.string    :asset_content_type
      t.integer   :asset_file_size
      t.datetime  :asset_updated_at
      t.integer   :ticket_id

      t.timestamps
    end

    [:asset_file_name, :asset_content_type, :asset_file_size, :asset_updated_at].each do |column|
      remove_column :tickets, column
    end
  end


  def self.down
    drop_table :assets

    add_column :tickets, :asset_file_name, :string
    add_column :tickets, :asset_content_type, :string
    add_column :tickets, :asset_file_size, :integer
    add_column :tickets, :asset_updated_at, :datetime
  end
end
