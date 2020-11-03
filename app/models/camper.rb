class Camper < ApplicationRecord
    has_many :camper_activities
    has_many :activities, through: :camper_activities

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 7}
    validates :age, numericality: {less_than: 19}
end
