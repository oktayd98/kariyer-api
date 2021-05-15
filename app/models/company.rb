class Company < ApplicationRecord
    belongs_to :city
    has_one_attached :avatar
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end
