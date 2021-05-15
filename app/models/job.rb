class Job < ApplicationRecord
    belongs_to :company
    has_many :conditions, dependent: :destroy
    has_many :cities_jobs, dependent: :destroy
    has_many :cities, through: :cities_jobs
    accepts_nested_attributes_for :conditions

    enum type: { anonim: 0, named: 1 }
end
