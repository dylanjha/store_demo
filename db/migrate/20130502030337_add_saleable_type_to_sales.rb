class AddSaleableTypeToSales < ActiveRecord::Migration
  def change
    add_column :sales, :saleable_type, :string
  end
end
