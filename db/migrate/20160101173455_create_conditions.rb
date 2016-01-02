class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.references :site
      t.string :ctype
      t.string :value
      t.timestamps null: false
    end
  end
end
