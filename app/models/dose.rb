# class Dose < ApplicationRecord
#   belongs_to :cocktail
#   belongs_to :ingredient

#   validates :description, presence: true
#   # validates :cocktail_id, uniqueness: true, presence: true
#   # validates :ingredient_id, uniqueness: true, presence: true
#   validates_uniqueness_of :cocktail, :scope => [:ingredient]
# end
class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
