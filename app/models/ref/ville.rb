class Ref::Ville < ActiveRecord::Base
  belongs_to :pays
  attr_accessible :active, :code, :libelle, :pays_id, :pays
end
