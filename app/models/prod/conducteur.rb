class Conducteur < ActiveRecord::Base
  belongs_to :automobile, :foreign_key => :automobile_id
  belongs_to :sinistralite, :foreign_key => :sinistralite_id, class_name:"Enchere"
  attr_accessible :automobile_id, :dateNaissance, :dateObtentionPermis, :relation, :sexe, :sinistralite_id, :typeConducteur, :sinitralite
end
