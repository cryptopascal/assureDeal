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

