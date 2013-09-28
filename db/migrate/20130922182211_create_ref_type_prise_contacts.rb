class CreateRefTypePriseContacts < ActiveRecord::Migration
  def change
    create_table :type_prise_contacts do |t|
      t.string :libelle
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
