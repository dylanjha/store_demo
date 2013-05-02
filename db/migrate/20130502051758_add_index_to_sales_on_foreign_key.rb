class AddIndexToSalesOnForeignKey < ActiveRecord::Migration
  def change
    add_index :sales, :foreign_key
  end
end
