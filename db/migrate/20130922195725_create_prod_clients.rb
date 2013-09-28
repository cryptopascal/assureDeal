class CreateProdClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.date :dateNaissance
      t.string :numeroCin
      t.text :adresse
      t.integer :codePostal
      t.string :telPortable
      t.string :telFix

      t.timestamps
    end
  end
end
