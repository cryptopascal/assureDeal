class CreateRefTypeResidences < ActiveRecord::Migration
  def change
    create_table :ref_type_residences do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
