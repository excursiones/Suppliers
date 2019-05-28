class RemoveElectronicoFromSuppliers < ActiveRecord::Migration[5.2]
  def change
    remove_column :suppliers, :Electronico, :string
  end
end
