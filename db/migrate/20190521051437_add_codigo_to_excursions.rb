class AddCodigoToExcursions < ActiveRecord::Migration[5.2]
  def change    
    add_column :excursions, :Codigo, :integer
  end
end
