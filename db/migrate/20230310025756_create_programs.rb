class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :bank_id
      t.string :cover_letter
      t.string :role
      t.string :division
      t.string :link
      t.string :applied
      t.text :description

      t.timestamps
    end
  end
end
