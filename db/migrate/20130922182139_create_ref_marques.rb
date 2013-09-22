class CreateRefMarques < ActiveRecord::Migration
  def change
    create_table :ref_marques do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
