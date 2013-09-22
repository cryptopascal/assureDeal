class Prod::Assureur < ActiveRecord::Base
  has_many :offres
  has_many :encheres, through: :offres
  has_many :encheresGagnees, class_name:"Enchere"
  attr_accessible :adresse, :codeDaps, :codePostal, :logo, :numeroIf, :numeroRc, :patente, :raionSociale, :telFix, :telPortable, :encheres,:offres
end
