class CreateRefSinistraliteConducteurs < ActiveRecord::Migration
  def change
    create_table :ref_sinistralite_conducteurs do |t|
      t.string :libelle
      t.boolean :active

      t.timestamps
    end
  end
end
