class CreateRefPeriodeRappels < ActiveRecord::Migration
  def change
    create_table :periode_rappels do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
