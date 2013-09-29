# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#encoding: utf-8

Pays.delete_all
maroc = Pays.create(active:true,libelle:"maroc",code:"MA")

Ville.delete_all
Ville.create(active:true,libelle:"casablanca",pays:maroc)
Ville.create(active:true,libelle:"aabat",pays:maroc)
Ville.create(active:true,libelle:"agadir",pays:maroc)

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
SinistraliteConducteur.create(active:true,libelle:"je n’ai pas eu d’accident, ni plus d’une d’interruption de contrat dépassant 30 jours sur les 24 deniers mois")
SinistraliteConducteur.create(active:true,libelle:"je n’ai jamais souscrit d’assurance auto")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré un sinistre matériel sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré un sinistre corporel sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré deux sinistres matériels sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré un sinistre matériel & un sinistre corporel sur les 12 derniers mois")
SinistraliteConducteur.create(active:true,libelle:"je n’ai pas cumulé 2 ans sans sinistre")
SinistraliteConducteur.create(active:true,libelle:"j’ai déclaré plus de deux sinistres sur les 12 derniers mois")







