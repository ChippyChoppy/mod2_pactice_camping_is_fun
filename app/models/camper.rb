class Camper < ApplicationRecord
    has_many :camper_activities
    has_many :activities, through: :camper_activities
end
