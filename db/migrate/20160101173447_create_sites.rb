class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.references :user
      t.string :name
      t.string :description
      t.string :url
      t.string :protocol
      t.string :http_method
      t.boolean :active
      t.string :status
      t.integer :check_interval
      t.datetime :last_check
      t.timestamps null: false
    end
  end
end
