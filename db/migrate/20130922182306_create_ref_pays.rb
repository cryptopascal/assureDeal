class CreateRefPays < ActiveRecord::Migration
  def change
    create_table :ref_pays do |t|
      t.string :libelle
      t.string :code
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
