class CreateRefTypeLogements < ActiveRecord::Migration
  def change
    create_table :ref_type_logements do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
