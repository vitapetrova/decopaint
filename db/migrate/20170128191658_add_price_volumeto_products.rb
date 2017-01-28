class AddPriceVolumetoProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :volume, :string
    add_column :products, :volume_2, :string
    add_column :products, :volume_3, :string
    add_column :products, :price_2, :float
    add_column :products, :price_22, :float
    add_column :products, :price_3, :float
    add_column :products, :price_32, :float
  end
end
