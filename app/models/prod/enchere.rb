class Prod::Enchere < ActiveRecord::Base
  has_many :offres
  has_many :assureurs, through: :offres
  belongs_to :client
  belongs_to :periode_rappel
  belongs_to :type_prise_contact
  belongs_to :dernierEncherisseur, :foreign_key => :dernierEncherisseur_id, class_name: "Assureur"
  belongs_to :encherisseurGagnant, :foreign_key => :encherisseurGagnant_id, class_name: "Assureur"
  attr_accessible :cotationActuelle, :dateDebut, :dateEffetContrat, :dateFin, :dernierEncherisseur_id,
                  :dernierPrix, :duree, :encherisseurGagnant_id, :prixDemande, :titre, :offres,
                  :assureurs, :dernierEncherisseur, :encherisseurGagnant, :client_id, :client,
                  :periode_rappel, :type_prise_contact, :type_prise_contact_id, :periode_rappel_id
end
