class CreateProdAssureurs < ActiveRecord::Migration
  def change
    create_table :assureurs do |t|
      t.string :raionSociale
      t.string :numeroIf
      t.string :numeroRc
      t.string :patente
      t.string :codeDaps
      t.text :adresse
      t.integer :codePostal
      t.string :telPortable
      t.string :telFix
      t.string :logo

      t.timestamps
    end
  end
end
