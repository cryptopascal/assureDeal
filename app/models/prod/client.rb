class Prod::Client < ActiveRecord::Base
  has_many :encheres
  attr_accessible :adresse, :codePostal, :dateNaissance, :nom, :numeroCin, :prenom, :telFix, :telPortable, :encheres
end
