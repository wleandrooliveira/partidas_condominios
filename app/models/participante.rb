class Participante < ApplicationRecord
  has_many :user
  has_many :partida

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :partida
end
