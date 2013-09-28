# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pays.delete_all
maroc = Pays.create(active:true,libelle:"maroc",code:"MA")
Ville.delete_all
casablanca = Ville.create(active:true,libelle:"casablanca",pays:maroc)
rabat = Ville.create(active:true,libelle:"aabat",pays:maroc)
agadir= Ville.create(active:true,libelle:"agadir",pays:maroc)
Marque.delete_all
dacia= Marque.create(active:true,libelle:"dacia")
Renault= Marque.create(active:true,libelle:"renault")
Audi= Marque.create(active:true,libelle:"audi")
BMW=Marque.create(active:true,libelle:"bmw")
TypeLogement.delete_all
villa= TypeLogement.create(active:true, libelle:"villa")
maison= TypeLogement.create(active:true, libelle:"maison")
appartement= TypeLogement.create(active:true, libelle:"appartement")

