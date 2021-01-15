class Lsource < ApplicationRecord

  belongs_to :sense

  validates :sense, presence: true

end
