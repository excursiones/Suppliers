class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.integer :Nit
      t.string :Razon
      t.string :Social
      t.string :Telefono
      t.string :Correo
      t.string :Electronico
      t.string :Ubicacion

      t.timestamps
    end
  end
end
