class RePri < ApplicationRecord

  belongs_to :r_ele

  validates :r_ele, :text, presence: true

end
