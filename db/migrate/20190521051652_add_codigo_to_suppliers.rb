class AddCodigoToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :Codigo, :integer
  end
end
