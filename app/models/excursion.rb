class Excursion < ApplicationRecord
  belongs_to :supplier

  validates :Tarifa, presence: true, length: {minimum: 5, maximum: 10}
  validates :Capacidad, presence: true, length: {minimum: 2, maximum: 3}
  validates :Servicios_Incluidos, presence: true, length: {minimum: 5, maximum: 255}
  validates :Pais, presence: true, length: {minimum: 3, maximum: 30}
  validates :Ciudad, presence: true, length: {minimum: 3, maximum: 30}
  validates :supplier_id, presence: true
  validates :Codigo, presence: true
end
