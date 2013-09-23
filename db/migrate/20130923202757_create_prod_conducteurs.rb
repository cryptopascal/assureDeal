class CreateProdConducteurs < ActiveRecord::Migration
  def change
    create_table :prod_conducteurs do |t|
      t.integer :sexe
      t.date :dateObtentionPermis
      t.date :dateNaissance
      t.integer :relation
      t.integer :typeConducteur
      t.integer :automobile_id
      t.integer :sinistralite_id

      t.timestamps
    end
  end
end
