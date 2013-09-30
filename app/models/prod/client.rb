class Client < ActiveRecord::Base
  has_many :encheres
  has_one :user, as: :profil
  belongs_to :ville
  attr_accessible :adresse, :codePostal, :dateNaissance, :nom, :numeroCin, :prenom, :telFix,
                  :telPortable, :encheres,:ville, :user
end
