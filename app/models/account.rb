class Account < ApplicationRecord
  belongs_to :supplier

  validates :Cuentas_por_pagar, presence: true
  validates :Cuentas_pagadas, presence: true
  validates :Intereses_por_pagar, presence: true
  validates :supplier_id, presence: true  

  def self.Total_ctas_por_pagar
    sum("Cuentas_por_pagar")
  end  
  def self.Total_Int_por_pagar
    sum("Intereses_por_pagar")
  end  
  
end
