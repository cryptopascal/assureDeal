class Automobile < ActiveRecord::Base
  has_many :conducteurs
  has_many :encheres, as: :produit
  attr_accessible :carburant, :dateMiseCirculation, :flagBG, :flagDC, :flagIncendie, :flagInondation, :flagPF, :flagPTA, :flagProtectionConducteur, :flagRC, :flagTierce, :flagVol, :marque_id, :modelVehicule, :nombreConducteurs, :nombrePlacesVehicule, :nouveauVehicule, :puissance, :valeufNeuf, :valeurVenale,:conducteurs
end
