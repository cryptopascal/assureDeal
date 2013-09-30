class Assureur < ActiveRecord::Base
  has_many :offres
  has_many :encheres, through: :offres
  has_many :encheresGagnees, class_name: "Enchere"
  has_one :user, as: :profil
  belongs_to :ville
  attr_accessible :adresse, :codeDaps, :codePostal, :logo, :numeroIf, :numeroRc, :patente, :raisonSociale,
                  :telFix, :telPortable, :encheres, :offres, :ville, :user
end
