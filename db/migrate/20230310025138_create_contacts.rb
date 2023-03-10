class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :group
      t.string :position
      t.string :last_contact
      t.string :response
      t.string :linkedin
      t.text :bio

      t.timestamps
    end
  end
end
