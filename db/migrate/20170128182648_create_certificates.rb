class CreateCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :certificates do |t|
      t.attachment :image
      t.timestamps
    end
  end
end
