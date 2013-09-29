# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130929191136) do

  create_table "assureurs", :force => true do |t|
    t.string   "raisonSociale"
    t.string   "numeroIf"
    t.string   "numeroRc"
    t.string   "patente"
    t.string   "codeDaps"
    t.text     "adresse"
    t.integer  "codePostal"
    t.string   "telPortable"
    t.string   "telFix"
    t.string   "logo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "ville_id"
  end

  add_index "assureurs", ["ville_id"], :name => "index_assureurs_on_ville_id"

  create_table "automobiles", :force => true do |t|
    t.integer  "puissance"
    t.integer  "nombrePlacesVehicule"
    t.decimal  "valeufNeuf"
    t.decimal  "valeurVenale"
    t.string   "modelVehicule"
    t.integer  "nombreConducteurs"
    t.string   "carburant"
    t.date     "dateMiseCirculation"
    t.boolean  "nouveauVehicule"
    t.boolean  "flagVol"
    t.boolean  "flagIncendie"
    t.boolean  "flagRC"
    t.boolean  "flagTierce"
    t.boolean  "flagDC"
    t.boolean  "flagPF"
    t.boolean  "flagInondation"
    t.boolean  "flagBG"
    t.boolean  "flagPTA"
    t.boolean  "flagProtectionConducteur"
    t.integer  "marque_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "automobiles", ["marque_id"], :name => "index_automobiles_on_marque_id"

  create_table "clients", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.date     "dateNaissance"
    t.string   "numeroCin"
    t.text     "adresse"
    t.integer  "codePostal"
    t.string   "telPortable"
    t.string   "telFix"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "ville_id"
  end

  add_index "clients", ["ville_id"], :name => "index_clients_on_ville_id"

  create_table "conducteurs", :force => true do |t|
    t.integer  "sexe"
    t.date     "dateObtentionPermis"
    t.date     "dateNaissance"
    t.integer  "relation"
    t.integer  "typeConducteur"
    t.integer  "automobile_id"
    t.integer  "sinistralite_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "encheres", :force => true do |t|
    t.date     "dateDebut"
    t.integer  "duree"
    t.string   "titre"
    t.date     "dateEffetContrat"
    t.date     "dateFin"
    t.decimal  "prixDemande"
    t.decimal  "cotationActuelle"
    t.integer  "dernierPrix"
    t.integer  "dernierEncherisseur_id"
    t.integer  "encherisseurGagnant_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "client_id"
    t.integer  "periode_rappel_id"
    t.integer  "type_prise_contact_id"
    t.integer  "produit_id"
    t.string   "produit_type"
  end

  add_index "encheres", ["client_id"], :name => "index_encheres_on_client_id"
  add_index "encheres", ["dernierEncherisseur_id"], :name => "index_encheres_on_dernierEncherisseur_id"
  add_index "encheres", ["encherisseurGagnant_id"], :name => "index_encheres_on_encherisseurGagnant_id"
  add_index "encheres", ["periode_rappel_id"], :name => "index_encheres_on_periode_rappel_id"
  add_index "encheres", ["produit_id"], :name => "index_encheres_on_produit_id"
  add_index "encheres", ["type_prise_contact_id"], :name => "index_encheres_on_type_prise_contact_id"

  create_table "localisation_etages", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "marques", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "offres", :force => true do |t|
    t.integer  "assureur_id"
    t.integer  "enchere_id"
    t.date     "date"
    t.decimal  "prix"
    t.boolean  "meilleur"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pays", :force => true do |t|
    t.string   "libelle"
    t.string   "code"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "periode_rappels", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "relation_biens", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "sinistralite_conducteurs", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "type_logements", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "type_prise_contacts", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "type_residences", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "villes", :force => true do |t|
    t.integer  "pays_id"
    t.string   "libelle"
    t.string   "code"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "villes", ["pays_id"], :name => "index_villes_on_pays_id"

end
