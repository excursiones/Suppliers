class RemoveCodigoFromAccounts < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :Codigo, :integer
  end
end
