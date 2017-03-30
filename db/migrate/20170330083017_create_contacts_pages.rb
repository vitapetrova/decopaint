class CreateContactsPages < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts_pages do |t|
      t.text :phone1
      t.text :phone2
      t.text :address
      t.timestamps
    end
  end
end
