rails g model ref/Marque libelle:string active:boolean
rails g model ref/SinistraliteConducteur libelle:string active:boolean
rails g model ref/PeriodeRappel libelle:string active:boolean
rails g model ref/TypePriseContact libelle:string active:boolean
rails g model ref/LocalisationEtage libelle:string active:boolean
rails g model ref/RelationBien libelle:string active:boolean
rails g model ref/TypeResidence libelle:string active:boolean
rails g model ref/TypeLogement libelle:string active:boolean
rails g model ref/Pays libelle:string code:string active:boolean
rails g model ref/Ville pays_is:integer libelle:string code:string active:boolean 

rails g model prod/Client nom:string prenom:string dateNaissance:date numeroCin:string adresse:text codePostal:integer telPortable:string telFix:string
rails g model prod/Assureur raionSociale:string numeroIf:string numeroRc:string patente:string codeDaps:string adresse:text codePostal:integer  telPortable:string telFix:string logo:string
rails g model prod/Enchere dateDebut:date duree:integer titre:string dateEffetContrat:date dateFin:date prixDemande:decimal cotationActuelle:decimal dernierPrix:integer  dernierEncherisseur_id:integer encherisseurGagnant_id:integer
rails g model prod/Offre assureur_id:integer enchere_id:integer date:date prix:decimal meilleur:boolean


rails g model prod/Automobile puissance:integer nombrePlacesVehicule:integer valeufNeuf:decimal valeurVenale:decimal modelVehicule:string nombreConducteurs:integer carburant:string dateMiseCirculation:date nouveauVehicule:boolean flagVol:boolean flagIncendie:boolean flagRC:boolean FlagRC:boolean flagTierce:boolean flagDC:boolean flagPF:boolean flagInondation:boolean flagBG:boolean flagPTA:boolean flagProtectionConducteur:boolean marque_id:integer
rails g model prod/Conducteur sexe:integer dateObtentionPermis:date dateNaissance:date relation:integer typeConducteur:integer automobile_id:integer sinistralite_id:integer

belongs_to :automobile, :foreign_key => :automobile_id
 
 
 rails generate migration AddClientIdToProdEncheres client_id:integer:index
 
 rails generate migration AddPeriodeRappelIdToProdEncheres periode_rappel_id:integer:index
 rails generate migration AddTypePriseContactIdToProdEncheres type_prise_contact_id:integer:index
 
 rails generate migration AddProduitIdToProdEncheres produit_id:integer:index
 rails generate migration AddProduitTypeToProdEncheres produit_type:string

rails g model User email:string username:string profil_id:integer profil_type:string active:boolean  password_digest:string
 
