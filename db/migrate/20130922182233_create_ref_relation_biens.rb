class CreateRefRelationBiens < ActiveRecord::Migration
  def change
    create_table :relation_biens do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
