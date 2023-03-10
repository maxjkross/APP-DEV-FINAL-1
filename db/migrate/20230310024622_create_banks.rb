class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|
      t.string :type
      t.integer :size
      t.string :location
      t.string :name
      t.string :specialty

      t.timestamps
    end
  end
end
