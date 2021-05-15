class Condition < ApplicationRecord
    belongs_to :job
    belongs_to :category
    validates :limit, numericality: { only_integer: true }
end
