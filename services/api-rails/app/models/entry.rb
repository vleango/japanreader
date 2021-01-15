class Entry < ApplicationRecord

  has_many :k_eles
  has_many :r_eles
  has_many :senses

  validates :ent_seq, presence: true, uniqueness: true

end
