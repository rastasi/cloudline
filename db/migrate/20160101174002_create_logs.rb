class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :site
      t.string :status
      t.text :details
      t.timestamps null: false
    end
  end
end
