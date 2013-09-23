class Prod::Automobile < ActiveRecord::Base
  has_many :conducteurs
  attr_accessible :carburant, :dateMiseCirculation, :flagBG, :flagDC, :flagIncendie, :flagInondation, :flagPF, :flagPTA, :flagProtectionConducteur, :flagRC, :flagTierce, :flagVol, :marque_id, :modelVehicule, :nombreConducteurs, :nombrePlacesVehicule, :nouveauVehicule, :puissance, :valeufNeuf, :valeurVenale,:conducteurs
end
