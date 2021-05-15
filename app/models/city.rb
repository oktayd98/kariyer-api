class City < ApplicationRecord
    has_many :companies
    has_many :cities_jobs, dependent: :destroy
    has_many :jobs, through: :cities_jobs
    validates :name, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 3 }
end
