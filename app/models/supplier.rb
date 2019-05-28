class Supplier < ApplicationRecord
  has_one :account
  has_many :excursions 

  validates :Nit, presence: true, length: {minimum: 8, maximum: 12}
  validates :Razon, presence: true, length: {minimum: 5, maximum: 70}
  validates :Telefono, presence: true, length: {minimum: 7, maximum: 20}
  validates :Correo, presence: true, length: {minimum: 10, maximum: 50}
  validates :Ubicacion, presence: true, length: {minimum: 5, maximum: 50}
  validates :Codigo, presence: true

  def self.findSuppliers(pais, ciudad, capacidad, servicios)
    joins(:excursions).where('"Pais" = ? AND "Ciudad" = ? AND "Capacidad" >= ? 
    AND "Servicios_Incluidos" LIKE ?', pais, ciudad, capacidad, "%#{servicios}%").select('*')    
  end
  def self.get_account(id)
    find(id).account
  end
  def self.get_excursions(id)
    find(id).excursions
  end

end
