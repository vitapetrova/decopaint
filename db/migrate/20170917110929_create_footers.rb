class CreateFooters < ActiveRecord::Migration[5.0]
  def change
    create_table :footers do |t|
      t.text :central_block
      t.timestamps
    end
  end
end
