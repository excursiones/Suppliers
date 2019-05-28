class RemoveCodigoFromExcursions < ActiveRecord::Migration[5.2]
  def change
    remove_column :excursions, :Codigo, :integer
  end
end
