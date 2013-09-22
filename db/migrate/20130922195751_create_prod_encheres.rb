class CreateProdEncheres < ActiveRecord::Migration
  def change
    create_table :prod_encheres do |t|
      t.date :dateDebut
      t.integer :duree
      t.string :titre
      t.date :dateEffetContrat
      t.date :dateFin
      t.decimal :prixDemande
      t.decimal :cotationActuelle
      t.integer :dernierPrix
      t.integer :dernierEncherisseur_id
      t.integer :encherisseurGagnant_id

      t.timestamps
    end
  end
end
