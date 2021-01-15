class REle < ApplicationRecord

  belongs_to :entry
  has_many :re_restrs
  has_many :re_infs
  has_many :re_pris

  validates :entry, presence: true
  validates :reb, presence: true

end
