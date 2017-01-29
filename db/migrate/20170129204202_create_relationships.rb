class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer  :main_id
      t.integer  :complementary_id
      t.timestamps
    end
  end
end
