class Client < ActiveRecord::Base
  has_many :encheres
  belongs_to :ville
  attr_accessible :adresse, :codePostal, :dateNaissance, :nom, :numeroCin, :prenom, :telFix,
                  :telPortable, :encheres,:ville
end
