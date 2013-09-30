# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


Pays.delete_all
maroc = Pays.create(active:true,libelle:"maroc",code:"MA")

Ville.delete_all
casablanca = Ville.create(active:true,libelle:"casablanca",pays:maroc)
Ville.create(active:true,libelle:"rabat",pays:maroc)
agadir=Ville.create(active:true,libelle:"agadir",pays:maroc)

Marque.delete_all
Marque.create(active:true,libelle:"dacia")
Marque.create(active:true,libelle:"renault")
Marque.create(active:true,libelle:"audi")
Marque.create(active:true,libelle:"bmw")

TypeLogement.delete_all
TypeLogement.create(active:true, libelle:"villa")
TypeLogement.create(active:true, libelle:"maison")
TypeLogement.create(active:true, libelle:"appartement")

TypeResidence.delete_all
TypeResidence.create(active:true, libelle:"principale")
TypeResidence.create(active:true, libelle:"secondaire")

RelationBien.delete_all
RelationBien.create(active:true,libelle:"propriétaire occupant")
RelationBien.create(active:true,libelle:"propriétaire non occupant")
RelationBien.create(active:true,libelle:"locataire")
RelationBien.create(active:true,libelle:"occupant à titre gratuit")

TypePriseContact.delete_all
TypePriseContact.create(active:true,libelle:"web")
TypePriseContact.create(active:true,libelle:"téléphone")
TypePriseContact.create(active:true,libelle:"à proximité")
TypePriseContact.create(active:true,libelle:"sans importance")

LocalisationEtage.delete_all
LocalisationEtage.create(active:true,libelle:"rez de chausée")
LocalisationEtage.create(active:true,libelle:"étage intermédiaire")
LocalisationEtage.create(active:true,libelle:"dernier étage")

SinistraliteConducteur.delete_all
bonus= SinistraliteConducteur.create(active:true,libelle:"je n’ai pas eu d’accident, ni plus d’une d’interruption de contrat dépassant 30 jours sur les 24 deniers mois")
SinistraliteConducteur.create(active:true,libelle:"je n’ai jamais souscrit d’assurance auto")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré un sinistre matériel sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré un sinistre corporel sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré deux sinistres matériels sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré un sinistre matériel & un sinistre corporel sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"je n’ai pas cumulé 2 ans sans sinistre")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré plus de deux sinistres sur les 12 derniers mois")


Assureur.delete_all
sanad= Assureur.create( raisonSociale:"sanad",
                 telFix:"0534369999",
                 numeroRc:"9019P090931",
                 ville:casablanca,
                 codePostal:10250,
                 adresse:"181 bv anfa"
)
atlanta= Assureur.create( raisonSociale:"atlanta",
                        telFix:"0534369991",
                        numeroRc:"9019P090931",
                        ville:casablanca,
                        codePostal:10250,
                        adresse:"181 bv anfa"
)
sadik= Assureur.create( raisonSociale:"sadik",
                          telFix:"0524369991",
                          numeroRc:"9019P090931",
                          ville:agadir,
                          codePostal:10250,
                          adresse:"15 bv hassan ii"
)
asta= Assureur.create( raisonSociale:"asta",
                        telFix:"0528369991",
                        numeroRc:"90439P090931",
                        ville:casablanca,
                        codePostal:10250,
                        adresse:"oum rabii oulfa"
)
provida= Assureur.create( raisonSociale:"provida",
                       telFix:"0522369991",
                       numeroRc:"9019P091931",
                       ville:casablanca,
                       codePostal:10250,
                       adresse:"places des nations, bv mohammed v"
)
nihal=   Assureur.create( raisonSociale:"nihal assurances",
                          telFix:"0522369991",
                          numeroRc:"9019P091931",
                          ville:casablanca,
                          codePostal:10250,
                          adresse:"bv my smail, ain sbaa"
)

Client.delete_all
moufahim= Client.create(nom:"moufahim",
                        prenom:"mohammed",
                        dateNaissance:"04/05/1987",
                        numeroCin:"j439022",
                        telPortable:"0642920029",
                        ville:casablanca,
                        adresse:"3 annaba, apt4 bourgone",
                        codePostal:"10221"

)
ahaddar= Client.create(nom:"ahaddar",
                        prenom:"soufiane",
                        dateNaissance:"28/04/1987",
                        numeroCin:"j439022",
                        telPortable:"0642921129",
                        ville:casablanca,
                        adresse:"alia mohammedia",
                        codePostal:"10211"

)
mourafiq= Client.create(nom:"mourafiq",
                       prenom:"mourad",
                       dateNaissance:"28/08/1987",
                       numeroCin:"j12212",
                       telPortable:"0642921129",
                       ville:casablanca,
                       adresse:"peti patlin benimellal",
                       codePostal:"15211"

)





