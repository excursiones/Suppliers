class RemoveSocialFromSuppliers < ActiveRecord::Migration[5.2]
  def change
    remove_column :suppliers, :Social, :string
  end
end
