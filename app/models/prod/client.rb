class Prod::Client < ActiveRecord::Base
  attr_accessible :adresse, :codePostal, :dateNaissance, :nom, :numeroCin, :prenom, :telFix, :telPortable
end
