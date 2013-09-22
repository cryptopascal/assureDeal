class CreateRefPeriodeRappels < ActiveRecord::Migration
  def change
    create_table :ref_periode_rappels do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
