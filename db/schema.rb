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

ActiveRecord::Schema.define(:version => 20130923205046) do

  create_table "prod_assureurs", :force => true do |t|
    t.string   "raionSociale"
    t.string   "numeroIf"
    t.string   "numeroRc"
    t.string   "patente"
    t.string   "codeDaps"
    t.text     "adresse"
    t.integer  "codePostal"
    t.string   "telPortable"
    t.string   "telFix"
    t.string   "logo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "prod_automobiles", :force => true do |t|
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

  add_index "prod_automobiles", ["marque_id"], :name => "index_prod_automobiles_on_marque_id"

  create_table "prod_clients", :force => true do |t|
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
  end

  create_table "prod_conducteurs", :force => true do |t|
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

  create_table "prod_encheres", :force => true do |t|
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
  end

  add_index "prod_encheres", ["client_id"], :name => "index_prod_encheres_on_client_id"
  add_index "prod_encheres", ["dernierEncherisseur_id"], :name => "index_prod_encheres_on_dernierEncherisseur_id"
  add_index "prod_encheres", ["encherisseurGagnant_id"], :name => "index_prod_encheres_on_encherisseurGagnant_id"
  add_index "prod_encheres", ["periode_rappel_id"], :name => "index_prod_encheres_on_periode_rappel_id"
  add_index "prod_encheres", ["type_prise_contact_id"], :name => "index_prod_encheres_on_type_prise_contact_id"

  create_table "prod_offres", :force => true do |t|
    t.integer  "assureur_id"
    t.integer  "enchere_id"
    t.date     "date"
    t.decimal  "prix"
    t.boolean  "meilleur"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ref_localisation_etages", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ref_marques", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_pays", :force => true do |t|
    t.string   "libelle"
    t.string   "code"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_periode_rappels", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_relation_biens", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_sinistralite_conducteurs", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ref_type_logements", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_type_prise_contacts", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_type_residences", :force => true do |t|
    t.string   "libelle"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ref_villes", :force => true do |t|
    t.integer  "pays_id"
    t.string   "libelle"
    t.string   "code"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "ref_villes", ["pays_id"], :name => "index_ref_villes_on_pays_id"

end
