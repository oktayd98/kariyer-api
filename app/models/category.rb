class Category < ApplicationRecord
    has_many :conditions
    has_many :jobs, through: :conditions
    validates :name, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 3 }
end
