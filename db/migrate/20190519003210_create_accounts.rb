class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :Codigo
      t.integer :Cuentas_por_pagar
      t.integer :Cuentas_pagadas
      t.integer :Intereses_por_pagar

      t.timestamps
    end
  end
end
