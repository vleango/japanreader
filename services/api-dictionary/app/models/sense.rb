class Sense < ApplicationRecord

  belongs_to :entry

  has_many :stagks
  has_many :stagrs
  has_many :poses
  has_many :xrefs
  has_many :ants
  has_many :fields
  has_many :miscs
  has_many :s_infs
  has_many :lsources
  has_many :dials
  has_many :glosses

end
