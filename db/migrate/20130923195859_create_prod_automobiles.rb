class CreateProdAutomobiles < ActiveRecord::Migration
  def change
    create_table :automobiles do |t|
      t.integer :puissance
      t.integer :nombrePlacesVehicule
      t.decimal :valeufNeuf
      t.decimal :valeurVenale
      t.string :modelVehicule
      t.integer :nombreConducteurs
      t.string :carburant
      t.date :dateMiseCirculation
      t.boolean :nouveauVehicule
      t.boolean :flagVol
      t.boolean :flagIncendie
      t.boolean :flagRC
      t.boolean :flagTierce
      t.boolean :flagDC
      t.boolean :flagPF
      t.boolean :flagInondation
      t.boolean :flagBG
      t.boolean :flagPTA
      t.boolean :flagProtectionConducteur
      t.integer :marque_id

      t.timestamps
    end
    add_index :automobiles,:marque_id
  end
end
