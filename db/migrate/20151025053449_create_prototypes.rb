class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :catchcopy
      t.text :concept
      t.references :user
      t.timestamps
    end
  end
end
