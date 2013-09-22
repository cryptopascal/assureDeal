class CreateProdOffres < ActiveRecord::Migration
  def change
    create_table :prod_offres do |t|
      t.integer :assureur_id
      t.integer :enchere_id
      t.date :date
      t.decimal :prix
      t.boolean :meilleur

      t.timestamps
    end
  end
end
