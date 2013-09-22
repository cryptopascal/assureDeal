class CreateRefLocalisationEtages < ActiveRecord::Migration
  def change
    create_table :ref_localisation_etages do |t|
      t.string :libelle
      t.boolean :active

      t.timestamps
    end
  end
end
