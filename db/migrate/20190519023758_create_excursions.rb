class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    create_table :excursions do |t|
      t.integer :Codigo
      t.integer :Tarifa
      t.integer :Capacidad
      t.string :Servicios_Incluidos
      t.string :Pais
      t.string :Ciudad
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
