class Offre < ActiveRecord::Base
  belongs_to :assureur
  belongs_to :enchere
  attr_accessible :assureur_id, :date, :enchere_id, :meilleur, :prix , :assureur, :enchere
end
