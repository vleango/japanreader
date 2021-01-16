class KEle < ApplicationRecord

  belongs_to :entry
  has_many :ke_infs
  has_many :ke_pris

  validates :entry, presence: true
  validates :keb, presence: true

end
